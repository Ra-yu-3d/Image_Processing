# 画像のエッジ抽出

```
ORG = imread('../image/original.png');
ORG = rgb2gray(ORG);
imagesc(ORG); colormap('gray'); colorbar;
```
によって、画像の読み込み、グレースケールへ変換し、表示した結果を図1．に示す。
![alt](/image/10-1.png)
<p align="center">図1．グレースケール変換</p>


この画像のエッジ抽出するには、edgeメソッドを用いればよい。よって、
```
IMG = edge(ORG,'prewitt');
imagesc(IMG); colormap('gray'); colorbar;
```
とすればよい。また、prewittの部分をsobel、cannyにすることでエッジ抽出に使用するアルゴリズムを変更することができる。その実行結果を図2．~図4．に示す。

![alt](/image/10-2.png)
<p align="center">図2．prewitt法によるエッジ検出</p>

![alt](/image/10-3.png)
<p align="center">図3．sobel法によるエッジ検出</p>

![alt](/image/10-4.png)
<p align="center">図4．canny法によるエッジ検出</p>
