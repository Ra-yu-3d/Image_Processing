% �ۑ�P�@�W�{���Ԋu�Ƌ�ԉ𑜓x
% �摜���_�E���T���v�����O���āi�W�{���Ԋu��傫�����āj
% �\������D.
% ���L�̓T���v���v���O�����ł���D
% �ۑ�쐬�ɂ������ẮuLenna�v�ȊO�̉摜��p����D

clear; % �ϐ��̃I�[���N���A

ORG=imread('https://2.bp.blogspot.com/-QQ8srAulOS4/V49o4upaiZI/AAAAAAAA8Y4/JRGe4Jzla1sYcvqZAVB1SYEskzcDvL8wgCLcB/s800/vr_game_mother.png'); % ���摜�̓���
imagesc(ORG); axis image; % �摜�̕\��
pause; % �ꎞ��~

IMG = imresize(ORG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,2,'box'); % �摜�̊g��
imagesc(IMG2); axis image; % �摜�̕\��
pause; % �ꎞ��~

IMG = imresize(IMG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,4,'box'); % �摜�̊g��
imagesc(IMG2); axis image; % �摜�̕\��
pause; % �ꎞ��~

IMG = imresize(IMG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,8,'box'); % �摜�̊g��
imagesc(IMG2); axis image; % �摜�̕\��
pause; % �ꎞ��~

IMG = imresize(IMG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,16,'box'); % �摜�̊g��
imagesc(IMG2); axis image; % �摜�̕\��
pause; % �ꎞ��~

IMG = imresize(IMG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,32,'box'); % �摜�̊g��
imagesc(IMG2); axis image; % �摜�̕\��