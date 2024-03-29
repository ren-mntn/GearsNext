import { useCallback } from "react";
import axios, { AxiosResponse, isAxiosError } from "axios";

import { API_BASE_URL } from "@/components/constants";

/**
 * バックエンドへAPIリクエストを送信し、レスポンスを受け取るカスタムフック。
 * @returns {sendRequest} APIリクエストを送信する関数。
 * 
 * @example
 * const { sendRequest } = useApiRequest();
 * const response = await sendRequest('GET', 'items', null);
 */
export const useApiRequest = () => {

  /**
  * APIリクエストを送信する関数
  * - トークンが期限切れの場合は、トークンをリフレッシュしてからリクエストを再送信する。
  * @param method リクエストメソッド (GET, POST, PUT, DELETE)
  * @param url リクエストURL api/以下のパス
  * @param requestData リクエストデータ
  * @returns APIレスポンス
  * @example
  * const { sendRequest } = useApiRequest();
  * const response = await sendRequest('GET', 'items', null);
  */
  const sendRequest = useCallback(
    async (method: string, url: string, requestData: any = null): Promise<AxiosResponse | null> => {
      let accessToken = localStorage.getItem("access_token");
      try {
        const response = await performRequest(method, url, requestData, accessToken);
        return response;
      } catch (err) {
        if (isAxiosError(err)) {
          // 401エラーの場合
          if (err.response?.status === 401) {
            const newToken = await refreshAccessToken();
            if (newToken) {
              return await performRequest(method, url, requestData, newToken);
            }
          }

          // 422エラーの際にエラーレスポンスをthrow
          if (err.response?.status === 422) {
            throw err;
          }
        }
        throw err; // この場所でエラーは `AxiosError` または `any` 型になります
      }
    },
    []
  );


  /**
   * アクセストークンをリフレッシュする。
   * @returns 新しいアクセストークンまたはnull。　
   */
  const refreshAccessToken = async () => {
    const refreshToken = localStorage.getItem('refresh_token');
    try {
      const response = await axios.post(API_BASE_URL + 'user/refresh', null, {
        headers: {
          'Authorization': `Bearer ${refreshToken}`
        }
      });
      const newAccessToken = response.data.access_token;
      localStorage.setItem('access_token', newAccessToken);
      return newAccessToken;
    } catch (err) {
      throw err;
    }
  };

  /**
   * 実際にAPIリクエストを実行する内部関数。
   * - accessTokenがある場合は、リクエストヘッダーにAuthorizationを追加する。
   */
  const performRequest = async (method: string, url: string, requestData: any, accessToken: string | null) => {
    const headers: { [key: string]: string } = {};
    if (accessToken) {
      headers["Authorization"] = `Bearer ${accessToken}`;
    }
    return await axios.request({
      method,
      url: API_BASE_URL + url,
      data: requestData,
      headers,
    });
  };


  return { sendRequest };
};