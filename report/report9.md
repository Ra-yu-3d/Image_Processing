# メディアンフィルタと先鋭化

```
ORG = imread('../image/original.png');
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar;
```
によって、画像の読み込み、グレースケールへ変換し、表示した結果を図1．に示す。
![alt](/image/9-1.png)
<p align="center">図1．グレースケール変換</p>

ここで、
```
ORG = imnoise(ORG,'salt & pepper',0.02);
imagesc(ORG); colormap(gray); colorbar;
```
によって、画像にノイズを添付し、表示した。その結果を図2．に示す。
![alt](/image/9-2.png)
<p align="center">図2．ノイズを添付したグレースケール画像</p>


平滑化フィルタで雑音除去し、表示するには、
```
IMG = filter2(fspecial('average',3),ORG);
imagesc(IMG); colormap(gray); colorbar;
```
とすればよい。そうして表示された結果を図3．に示す。
![alt](/image/9-3.png)
<p align="center">図3．平滑化フィルタで雑音除去した画像</p>


また、メディアンフィルタで雑音除去し、表示するには、
```
IMG = medfilt2(ORG,[3 3]);
imagesc(IMG); colormap(gray); colorbar;
```
とすればよい。そうして表示された結果を図4．に示す。
![alt](/image/9-4.png)
<p align="center">図4．メディアンフィルタで雑音除去した画像</p>


自身でフィルタを設計して雑音を除去し、表示するには
```
f=[0,-1,0;-1,5,-1;0,-1,0];
IMG = filter2(f,IMG,'same');
imagesc(IMG); colormap(gray); colorbar;
```
とすればよい。そうして表示された結果を図5．に示す。
![alt](/image/9-5.png)
<p align="center">図5．自身で設計したフィルタで雑音除去した画像</p>
