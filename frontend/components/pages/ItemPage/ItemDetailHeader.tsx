import { FC } from 'react';
import { Box } from '@mui/material';
import Image from 'next/image';

import { ItemName } from '@/components/pages/ItemPage/Details/ItemName';
import { BrandName } from '@/components/pages/ItemPage/Details/BrandName';

type ItemDetailHeaderProps = {
  itemName: string;
  brandName: string;
  imageName: string;
};

/**
 * 商品詳細ページのヘッダー部分
 * 商品名とメーカー名と商品画像を表示する
 *
 * @param itemName
 * @param brandName
 * @param imageName
 * @example
 * <ItemDetailHeader
 * itemName={itemName}
 * brandName={brandName}
 * imageName={imageName}
 * />
 */
export const ItemDetailHeader: FC<ItemDetailHeaderProps> = ({
  itemName,
  brandName,
  imageName,
}) => {
  return (
    <Box display={'flex'} justifyContent={'center'}>
      <Box
        sx={{
          display: 'flex',
          flexDirection: 'column',
          alignItems: 'center',
          justifyContent: 'center',
          position: 'relative',
          width: '90%',
          maxWidth: '600px',
          maxHeight: '100%',
        }}
      >
        {/* 商品名　メーカー　を表示 */}
        <ItemName itemName={itemName} />
        <BrandName brandName={brandName} />
        {/* 商品画像とクリックでアマゾンへのリンク */}
        {/* レスポンシブ画像 */}
        <Box
          sx={{
            position: 'relative', // 必要: 'fill'レイアウトを使うときに親要素に'relative'を設定
            width: '100%',
            maxWidth: '800px',
            paddingTop: '100%', // アスペクト比を保持
          }}
        >
          <Image
            src={imageName}
            alt={imageName}
            fill
            sizes="(max-width: 768px) 100vw"
            style={{ objectFit: 'contain' }}
            priority
          />
        </Box>
      </Box>
    </Box>
  );
};
