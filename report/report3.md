# 閾値処理

```
ORG=imread('../image/original.png');
ORG= rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar;
```
によって、原画像の読み込みグレースケールへ変換し、表示した結果を図1．に示す。

![alt](/image/3-1.png)
<p align="center">図1．グレースケール変換</p>

グレースケール変換した画像の輝度値が64以上の画素を1、それ以外の画素を0とするには、
```
IMG = ORG > 64;
imagesc(IMG); colormap(gray); colorbar;
```
とする。この結果を図2．に示す。

![alt](/image/3-2.png)
<p align="center">輝度値が64以上の画素の取り出し</p>


```
IMG = ORG > n;
```
また、輝度値をnとした場合、nに任意の整数を入れることにより、輝度値がn以上の画素を取り出すことができる。その結果の画像は、
```
imagesc(IMG); colormap(gray); colorbar;
```
を用いればよい。
図3．~図5．にnが96、128、192の場合の表示結果を示す。

![alt](/image/3-3.png)
<p align="center">輝度値が96以上の画素の取り出し</p>

![alt](/image/3-4.png)
<p align="center">輝度値が128以上の画素の取り出し</p>

![alt](/image/3-5.png)
<p align="center">輝度値が192以上の画素の取り出し</p>
