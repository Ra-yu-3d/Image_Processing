# ラべリング

```
ORG = imread('../image/original.png');
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar;
```
によって、画像の読み込み、グレースケールへ変換し、表示した結果を図1．に示す。
![alt](/image/8-1.png)
<p align="center">図1．グレースケール変換</p>

ここで、
```
IMG = ORG > 128;
imagesc(IMG); colormap(gray); colorbar;
```
によって、輝度値128を基準に二値化し、表示した。その結果を図2．に示す。
![alt](/image/8-2.png)
<p align="center">図2．輝度値128を基準とした二値化</p>

また、
```
IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar;
```
によって、二値化した画像をラベリングして表示した。その結果を図3．に示す。

![alt](/image/8-3.png)
<p align="center">図3．二値化した画像のラベリング</p>
