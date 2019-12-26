# 標本化間隔と空間解像度

```
ORG=imread('https://2.bp.blogspot.com/-QQ8srAulOS4/V49o4upaiZI/AAAAAAAA8Y4/JRGe4Jzla1sYcvqZAVB1SYEskzcDvL8wgCLcB/s800/vr_game_mother.png');
imagesc(ORG); axis image;
```
によって，原画像を読み込み，表示した結果を図1．に示す．

![alt](/image/1-0.png)
<<<<<<< HEAD
<p align="center">図1 原画像</p>
=======
<div style="text-align: center;">
図1．原画像
</div>
>>>>>>> 82f9f328a2adba39f70141f0efd130430ca43e1d


原画像を1/2サンプリングするには画像を1/2倍に縮小した後，2倍にすればよい．なお，拡大する際には，単純補間するために「box」オプションを設定する．
```
IMG = imresize(ORG,0.5);
IMG2 = imresize(IMG,2,'box');
```
1/2サンプリングの結果を図2．に示す．
![alt](/image/1-1.png)
##<div style="text-align: center;">
図2．1/2サンプリング
</div>

同様に原画像を1/4サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．すなわち，
```
IMG = imresize(ORG,0.5);
IMG2 = imresize(IMG,2,'box');
```
なする．1/4サンプリングの結果を図3．に示す．
![alt](/image/1-2.png)
##<div style="text-align: center;">
図2．1/4サンプリング
</div>
1/8サンプリングから1/32サンプリングは，
```
IMG = imresize(ORG,0.5);
IMG2 = imresize(IMG,2,'box');
```
を繰り返す．サンプリングの結果を図4．~図6．に示す．
![alt](/image/1-3.png)
##<div style="text-align: center;">
図2．1/8サンプリング
</div>

![alt](/image/1-4.png)
##<div style="text-align: center;">
図2．1/16サンプリング
</div>

![alt](/image/1-5.png)
##<div style="text-align: center;">
図2．1/32サンプリング
</div>
このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する．
