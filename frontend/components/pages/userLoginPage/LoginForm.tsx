import React from 'react';

import { FormProvider } from '@/hooks/useFormMethods';
import { AuthForm } from '@/components/shares/organisms/AuthForm';
import { LoginInputFormFieldsList } from '@/components/pages/userLoginPage/LoginInputFormFieldsList';
import { useUserLogin } from '@/hooks/UserAuth/useUserLogin';

/**
 * ログインフォーム
 *
 * @remarks
 * このコンポーネントはログインページで使用され、以下の要素を含みます：
 * - メールアドレス
 * - パスワード
 *
 * AuthFormコンポーネントを内部で使用しており、認証に必要なUIとロジックが含まれています。
 *
 * @returns ユーザーログインフォーム
 */
export const LoginForm = () => {
  const { formMethods, onSubmit, loading, errorMessage } = useUserLogin();
  return (
    <FormProvider formMethods={formMethods}>
      <AuthForm
        inputFormFieldsList={LoginInputFormFieldsList}
        onSubmit={onSubmit}
        buttonText="ログイン"
        loading={loading}
        errorMessage={errorMessage}
      />
    </FormProvider>
  );
};
