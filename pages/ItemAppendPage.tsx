import React from "react";
import { LoadingButton } from "@mui/lab";
import { MenuItem, TextField } from "@mui/material";
import { Box } from "@mui/system";
import { useState, FormEvent } from "react";

import { Tags } from "../components/atoms/itemAppend/Tags";
import { TextFieldStyles } from "../styles/ItemAppendPage/TextFieldStyles";
import { CategoryNameList } from "../components/atoms/itemAppend/SelectNames/CategoryNameList";
import { brandNameList } from "../components/atoms/itemAppend/SelectNames/BrandNameList";
import { colorTagList } from "../components/atoms/itemAppend/SelectNames/ColorTagList";
import { itemTagList } from "../components/atoms/itemAppend/SelectNames/ItemTagList";
import { useItemApi } from "../components/api/useItemApi";
import CategoryAssign from "@/components/molecules/itemAppend/CategoryAssign";

const ItemAppendPage = () => {
  const [categoryValue, setCategoryValue] = useState(""); // valueをstateで管理
  const [brandValue, setBrandValue] = useState(""); // valueをstateで管理
  const [itemTags, setItemTags] = useState<string[]>([]);
  const [colorTags, setColorTags] = useState<string[]>([]);
  const [abilitys, setAbilitys] = useState([]);
  const [loading, setLoading] = useState(false);

  const { postItemData } = useItemApi();

  const handleSubmit = async (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault();

    const itemDatas = {
      category: categoryValue,
      itemName: e.currentTarget.itemName.value,
      brandName: brandValue,
      price: parseInt(e.currentTarget.price.value),
      asin: e.currentTarget.asin.value,
      imagePath: e.currentTarget.imagePath.value,
      amazonUrl: e.currentTarget.amazonUrl.value,
      colors: colorTags,
      tags: itemTags,
      itemAbility: abilitys,
    };

    try {
      setLoading(true);
      await postItemData(itemDatas);
      setLoading(false);
    } catch (error) {
      alert(error);
    } finally {
      setLoading(false);
    }
  };

  return (
    <>
      <Box
        component="form"
        onSubmit={handleSubmit}
        display={"flex"}
        flexDirection="column"
        alignItems="center"
        minHeight="100vh"
      >
        <TextField
          id="itemName"
          required
          label="商品名"
          defaultValue=""
          sx={TextFieldStyles.input}
        />
        <TextField
          id="amazonUrl"
          required
          label="AmazonURL"
          defaultValue=""
          sx={TextFieldStyles.input}
        />
        <TextField
          id="asin"
          required
          label="ASIN"
          defaultValue=""
          sx={TextFieldStyles.input}
        />
        <TextField
          id="imagePath"
          required
          label="imagePath  public/images/items/~"
          defaultValue=""
          sx={TextFieldStyles.input}
        />
        <TextField
          id="Category"
          select
          label="カテゴリー"
          value={categoryValue}
          defaultValue="テント"
          onChange={(event) => setCategoryValue(event.target.value)}
          sx={TextFieldStyles.input}
        >
          {CategoryNameList.map((option) => (
            <MenuItem key={option} value={option}>
              {option}
            </MenuItem>
          ))}
        </TextField>
        <TextField
          id="brand"
          select
          label="メーカーを選択"
          value={brandValue}
          defaultValue="ogawa (オガワ)"
          onChange={(event) => setBrandValue(event.target.value)}
          sx={TextFieldStyles.input}
        >
          {brandNameList.map((option) => (
            <MenuItem key={option} value={option}>
              {option}
            </MenuItem>
          ))}
        </TextField>
        <TextField
          id="price"
          required
          label="定価"
          sx={TextFieldStyles.input}
        />
        <Tags
          text={"タグ"}
          tagName={itemTags}
          setTagName={setItemTags}
          items={itemTagList}
        />
        <Tags
          text={"カラー"}
          tagName={colorTags}
          setTagName={setColorTags}
          items={colorTagList}
        />
        {/* <TentDatas categoryValue={categoryValue} /> */}
        <CategoryAssign
          categoryValue={categoryValue}
          abilitys={abilitys}
          setAbilitys={setAbilitys}
        />

        <LoadingButton
          sx={TextFieldStyles.input}
          fullWidth
          type="submit"
          variant="outlined"
          loading={loading}
          onClick={() => handleSubmit}
        >
          データ送信
        </LoadingButton>
      </Box>
    </>
  );
};

export default ItemAppendPage;
