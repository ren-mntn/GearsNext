import Link from 'next/link';
import Image from 'next/legacy/image';
import { Box, Grid } from '@mui/material';
import Typography from '@mui/material/Typography';

import { ItemDataTypes } from '@/components/types/ItemDataTypes';
import { getItemImageUrl } from '@/components/shares/atoms/getItemImageUrl';
import { useRouter } from 'next/router';

type ItemThumbnailProps = {
  ItemData: ItemDataTypes;
};

// TODO アマゾンの価格を更新させる
/**
 * 商品のサムネイル画像と基本情報を表示する
 *
 * @param itemData 商品データ
 * @returns 商品のサムネイル
 */
export const ItemThumbnail: React.FC<ItemThumbnailProps> = ({ ItemData }) => {
  const ItemImagesUrl: string = getItemImageUrl(
    ItemData.brandName,
    ItemData.imageName,
  );

  const router = useRouter();
  const { itemId } = router.query;

  return (
    <Grid
      container
      spacing={3}
      minWidth={130}
      alignItems="center"
      justifyContent="center"
    >
      {/* 商品画像 */}
      <Grid item xs={12} sm={12} md={12}>
        <Link href={`/items/${ItemData.itemId}`}>
          <Image
            src={ItemImagesUrl}
            alt="item image"
            layout="responsive"
            width={500}
            height={500}
            objectFit="contain"
            priority
          />
        </Link>
      </Grid>

      {/* 基本情報 */}
      <Box display="flex" flexDirection="column" alignItems="center">
        <Typography variant={'body2'}>{ItemData.brandName}</Typography>
        <Typography variant={'h6'}>{ItemData.itemName}</Typography>
        <Typography variant={'h6'}>
          ¥{ItemData.price.toLocaleString()}
        </Typography>
      </Box>
    </Grid>
  );
};
