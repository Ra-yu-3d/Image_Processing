# 階調数と疑似輪郭

```
ORG=imread('../image/original.png');
ORG = rgb2gray(ORG); colormap(gray); colorbar;
```
によって原画像を読み込みグレースケール画像へ変換，表示した結果を図1．に示す．
![alt](/image/2-1.png)
<p align="center">図1．グレースケール変換</p>

このグレースケール画像を2諧調化するには、輝度によって2分割すればよい。よって、
```
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
```
とすればよい。2諧調化した結果を図2．に示す。

![alt](/image/2-2.png)
<p align="center">図2．2諧調変換</p>

また、4諧調化するには、輝度によって4分割すればよい。よって、
```
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
```
とすればよい。4諧調化した結果を図3．に示す。

![alt](/image/2-3.png)
<p align="center">図3．4諧調変換</p>

また、8諧調化するには、輝度によって8分割すればよい。よって、
```
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>96;
IMG3 = ORG>128;
IMG4 = ORG>160;
IMG5 = ORG>192;
IMG6 = ORG>224;
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;
imagesc(IMG); colormap(gray); colorbar;  axis image;
```
とすればよい。8諧調化した結果を図4．に示す。

![alt](/image/2-4.png)
<p align="center">図4．8諧調変換</p>
