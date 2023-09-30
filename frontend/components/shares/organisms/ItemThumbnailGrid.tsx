import React from 'react';
import { useRecoilValue } from 'recoil';
import Grid from '@mui/material/Grid';
import { Box } from '@mui/system';

import { ItemDataType } from '@/components/types/ItemDataType';
import { ItemThumbnail } from '@/components/shares/molecules/ItemThumbnail';
import { filteredItemsState } from '@/components/shares/atoms/state/filteredItemsState';
import { paginationState } from '../atoms/state/paginationState';
import { PaginationControls } from '../molecules/PaginationControls';

// ページネーションのスタートとエンドインデックスを計算するヘルパー関数
const calculateStartAndEndIndex = (
  currentPage: number,
  itemsPerPage: number,
) => {
  const startIndex = (currentPage - 1) * itemsPerPage;
  const endIndex = startIndex + itemsPerPage;
  return { startIndex, endIndex };
};

/**
 * 商品のサムネイル画像と基本情報を並べたグリッドを表示します。
 * ページネーション機能付き
 *
 * @returns 商品のサムネイルを並べたグリッド
 * @example
 * <ItemThumbnailGrid />
 */
export const ItemThumbnailGrid: React.FC = () => {
  const filteredItemList = useRecoilValue(filteredItemsState);
  const pagination = useRecoilValue(paginationState);

  const { startIndex, endIndex } = calculateStartAndEndIndex(
    pagination.currentPage,
    pagination.itemsPerPage,
  );
  const currentItems = filteredItemList?.slice(startIndex, endIndex);

  return (
    <Box display={'flex'} flexDirection={'column'} alignItems="center">
      <PaginationControls />
      <Grid
        container
        spacing={2}
        sx={{ position: 'center' }}
        style={{ width: '80%', margin: '0 auto' }}
      >
        {currentItems && currentItems.length > 0 ? (
          currentItems.map((data: ItemDataType, index: number) => (
            <Grid item xs={5} sm={4} md={3} key={index}>
              <ItemThumbnail ItemData={data} />
            </Grid>
          ))
        ) : (
          <p>No items found</p>
        )}
      </Grid>
      <PaginationControls />
    </Box>
  );
};
