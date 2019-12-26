# ダイナミックレンジの拡大

```
ORG = imread('../image/original.png');
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar;
```
により、画像の読み込み、グレースケールへ変換し、表示した結果を図1．に示す。

![alt](/image/7-1.png)
<p align="center">図1．グレースケール変換</p>

ここで、
```
imhist(ORG);
```
によって、濃度ヒストグラムを表示する。その結果を図2．に示す。
![alt](/image/7-2.png)
<p align="center">図2．濃度ヒストグラム</p>

また、
```
ORG = double(ORG);
mn = min(ORG(:));
mx = max(ORG(:));
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar;
```
によって、画素のダイナミックレンジを0~255に拡大する。その後、

```
ORG = uint8(ORG);
imhist(ORG);
```
によって、ダイナミックレンジを拡大した画像を表示し、濃度ヒストグラムを表示する。その結果を図3．図4．に示す。また、画素のダイナミックレンジを拡大した際にORGを小数に変換するため、uint8でORGを8ビットの符号なし整数に変換してからヒストグラムを表示している。

![alt](/image/7-3.png)
<p align="center">図3．ダイナミックレンジを拡大したグレーズケール画像</p>

![alt](/image/7-4.png)
<p align="center">図4．ダイナミックレンジを拡大したグレーズケール画像の濃度ヒストグラム</p>
