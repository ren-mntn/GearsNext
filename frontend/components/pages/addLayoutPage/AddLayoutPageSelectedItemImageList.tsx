import React, { FC } from 'react';
import { useRecoilValue } from 'recoil';
import { Box } from '@mui/material';

import { selectedItemsListState } from '@/components/shares/atoms/state/selectedItemsListState';
import { ImageGridList } from '@/components/shares/molecules/ImageGridList';

/**
 * このコンポーネントは、レイアウト投稿ページで選択された商品の画像を表示するためのUIを提供します。
 * - ImageGridList: selectedItemsListState ステートから取得した商品の画像を表示します。
 *
 * @returns {JSX.Element} 選択された商品の画像を表示するコンポーネントを含むReact要素
 */
export const AddLayoutPageSelectedItemImageList: FC = () => {
  const selectedItemsList = useRecoilValue(selectedItemsListState);

  return (
    <Box
      sx={{
        height: '100',
        width: '100%',
        minHeight: '200px',
      }}
    >
      <ImageGridList
        itemList={selectedItemsList}
        imageSize={200}
        cols={selectedItemsList.length}
        isLink={false}
      />
    </Box>
  );
};
