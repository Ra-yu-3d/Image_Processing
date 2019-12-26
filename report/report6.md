# 画像の二値化

```
ORG=imread('../image/original.png');
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar;
```

により、画像の読み込み、グレースケールへ変換し、表示した結果を図1．に示す。

![alt](/image/6-1.png)
<p align="center">図1．グレースケール変換</p>

ここで
```
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;
```
によって、輝度値が128以上の画素を取り出し、表示した。その結果を図2．に示す。

![alt](/image/6-2.png)
<p align="center">図2．輝度値による二値化</p>

また、
```
IMG = dither(ORG); % ディザ法による二値化
imagesc(IMG); colormap(gray); colorbar;
```
ディザ法によって画像の二値化し、表示した。その結果を図3．に示す。

![alt](/image/6-3.png)
<p align="center">図3．ディザ法による二値化</p>
