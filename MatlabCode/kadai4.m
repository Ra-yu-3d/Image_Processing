% 課題４　画像のヒストグラム

% 画素の濃度ヒストグラムを生成せよ．

% 下記はサンプルプログラムである．

% 課題作成にあたっては「Lenna」以外の画像を用いよ．



clear; % 変数のオールクリア



ORG=imread('https://2.bp.blogspot.com/-QQ8srAulOS4/V49o4upaiZI/AAAAAAAA8Y4/JRGe4Jzla1sYcvqZAVB1SYEskzcDvL8wgCLcB/s800/vr_game_mother.png'); % 原画像の入力

ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換

imagesc(ORG); colormap(gray); colorbar;

pause;



imhist(ORG); % ヒストグラムの表示