# 画像のヒストグラム

```
ORG=imread('../image/original.png');
ORG=rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar;
```
によって、画像の読み込み、グレースケール変換し、表示した結果を図1．に示す。
![alt](/image/4-1.png)
<p align="center">図1．グレースケール変換</p>

また、
```
imhist(ORG);
```
により、ORGのヒストグラムを表示する。この結果を図2．に示す。
![alt](/image/4-2.png)
<p align="center">図2．グレースケール変換した原画像のヒストグラム</p>
