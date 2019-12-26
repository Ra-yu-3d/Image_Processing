# 判別分析法

```
ORG=imread('../image/original.png');
ORG = rgb2gray(ORG);
imagesc(ORG); colormap(gray); colorbar;
```
によって、原画像の読み取り、グレースケール変換し、表示した結果を図1．に示す。

![alt](/image/5-1.png)
<p align="center">図1．グレースケール変換</p>

分離度が最大となるしきい値を、

```
C1 = H(1:i);
C2 = H(i+1:256);

n1 = sum(C1);
n2 = sum(C2);

myu1 = mean(C1);
myu2 = mean(C2);

sigma1 = var(C1);
sigma2 = var(C2);

sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2);
sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2);

if max_val<sigma_B/sigma_w
max_val = sigma_B/sigma_w;
max_thres =i;
```

で求める。ここで求まったしきい値を用いて二値化した結果を、
```
IMG = ORG > max_thres;
imagesc(IMG); colormap(gray); colorbar;
```
により表示し、図2．に示す。
![alt](/image/5-2.png)
<p align="center">判別分析法による二値化画像</p>
