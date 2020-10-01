%{
org = imread('old.jpg');
hist_auto = imread('hist_auto.jpg');
hist_man = imread('hist_man.jpg');
f_sob = fspecial('sobel');
f_lap = fspecial('laplacian');
%----sobel---------------------------------------------------------------
cf_org_sob = imfilter(org , f_sob );
cf_hist_auto_sob = imfilter(hist_auto , f_sob );
cf_hist_man_sob = imfilter(hist_man , f_sob );
%----laplacian----------------------------------------------------------
cf_org_lap = imfilter(org , f_lap );
cf_hist_auto_lap = imfilter(hist_auto , f_lap );
cf_hist_man_lap = imfilter(hist_man , f_lap );
%---imshow------------------------------------------------------------
imshow(cf_org_sob,[10,40]);title('sobel no hist');
figure;
imshow(cf_hist_man_sob,[10,40]);title('sobel man hist');
figure;
imshow(cf_hist_auto_sob,[10,40]);title('sobel auto hist');
figure;
imshow(cf_org_lap,[10,40]);title('laplacian no hist');
figure;
imshow(cf_hist_man_lap,[10,40]);title('laplacian man hist');
figure;
imshow(cf_hist_auto_lap,[10,40]);title('laplacian auto hist');
%}

m = imread('old.jpg');


%im = medfilt2(m,[1,1]);
%B = imgaussfilt(m,4);
f = fspecial('unsharp',1);
cf= imfilter(m , f );
cf2 = medfilt2(cf,[6,1]);
B = imgaussfilt(cf2,3.1);
%cf2 = medfilt2(B,[6,1]);
figure;
imshow(B,[]);title('my answer');

 