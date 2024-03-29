// pages/_app.tsx
import type { AppProps } from 'next/app';
import { RecoilRoot, useSetRecoilState } from 'recoil';
import { Box, CssBaseline } from '@mui/material';
import Header from './Header';
import { ThemeProvider, createTheme } from '@mui/material/styles';
import React from 'react';
import '../styles/global.css';
import { useMediaQuery } from '@mui/material';

import { themeOptions } from '@/styles/themes/themeOptions';
import { NextComponentType, NextPageContext } from 'next';
import { useGetUserApi } from '@/hooks/UserAuth/useGetUserApi';
import { DEFAULT_PAGE_WIDTH } from '@/components/constants';
import { Footer } from '@/components/shares/atoms/Footer';
import { errorMessageState } from '@/components/shares/atoms/state/errorMessageState';

const theme = createTheme(themeOptions);
interface InsideRecoilRootProps {
  Component: NextComponentType<NextPageContext, any, any>;
  pageProps: any;
}
function MyApp({ Component, pageProps }: AppProps) {
  return (
    <RecoilRoot>
      <InsideRecoilRoot Component={Component} pageProps={pageProps} />
    </RecoilRoot>
  );
}

const InsideRecoilRoot = ({ Component, pageProps }: InsideRecoilRootProps) => {
  const isSmallScreen = useMediaQuery(theme.breakpoints.down('sm'));

  const paddingTop = isSmallScreen ? '130px' : '100px'; // こちらの値は実際のヘッダーの高さに合わせて調整してください。
  useGetUserApi();
  return (
    <ThemeProvider theme={theme}>
      <Box
        sx={{
          pt: paddingTop,
          mx: 'auto',
          maxWidth: DEFAULT_PAGE_WIDTH,
          width: '80%',
        }}
      >
        <CssBaseline />
        <Header />
        <Component {...pageProps} />
        <Footer />
      </Box>
    </ThemeProvider>
  );
};

export default MyApp;
