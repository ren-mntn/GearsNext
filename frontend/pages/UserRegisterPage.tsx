import React from 'react';
import {Typography } from '@mui/material';

import { useRedirectIfAuthenticated } from '@/hooks/UserAuth/useRedirectIfAuthenticated';

import { AuthPageTemplate } from '@/components/templates/AuthPageTemplate';
import { RegisterForm } from '@/components/pages/userRegisterPage/RegisterForm';
import {LinkButton} from '@/components/shares/molecules/LinkButton';
/**
 * ユーザー新規登録ページ
 *
 * @remarks
 * このページには以下の要素が含まれます：
 * - タイトル ("新規登録")
 * - 新規登録フォーム
 * - 既存のユーザーアカウントへのリンク
 *
 * @returns ユーザー新規登録ページの要素
 */
const UserRegisterPage = () => {
  useRedirectIfAuthenticated();

  const title = <Typography variant="h4">新規登録</Typography>;
  const registerForm = <RegisterForm />;
  const link = (
    <LinkButton
      link={'/UserLoginPage'}
      text="既にアカウントを持っている方はこちら"
      pt={8}
    />
  );

  return <AuthPageTemplate title={title} form={registerForm} link={link} />;
};

export default UserRegisterPage;
