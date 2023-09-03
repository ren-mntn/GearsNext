import { filteredItemsState } from '@/components/shares/atoms/state/filteredItemsState';
import { ItemThumbnail } from '@/components/molecules/searchPage/ItemThumbnail';
import { ItemDataTypes } from '@/components/types/ItemDataTypes';
import React from 'react';
import { useRecoilValue, useSetRecoilState } from 'recoil';
import Grid from '@mui/material/Grid';

const ItemThumbnailGrid = () => {
  const filteredItemList = useRecoilValue(filteredItemsState);
  return (
    <Grid
      container
      spacing={{ xs: 2, md: 5 }}
      columns={{ xs: 12, sm: 8, md: 10 }}
      sx={{ position: 'center' }}
    >
      {filteredItemList ? (
        filteredItemList.map((data: ItemDataTypes, index: number) => (
          <Grid item xs={2} sm={2} md={2} key={index}>
            <ItemThumbnail ItemData={data} key={`item-${index}`} />
          </Grid>
        ))
      ) : (
        <p>No items found</p>
      )}
    </Grid>
  );
};

export default ItemThumbnailGrid;