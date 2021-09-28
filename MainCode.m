%% This code has been written by Hanieh Shabanain as a assginment for Computer Vision Course

%%Problem Statement: 
%This problem uses a two-view (or two camera) setup, 
%i.e. two views using a single camera or two views from two different cameras at different orientation.

clc;
close all;
clear all;

%% First Step : Getting two views (images) of an object or a scene of your choice ==> Generate two view  points
% Reading two captured images 
% Image 1 and Image II
img1=imread('Image1.jpg');
img2=imread('Image2.jpg');
figure(1);
subplot(1,2,1); imshow(img1); title('Image1'); axis image;axis off;
subplot(1,2,2); imshow(img2);  title('Image2'); axis image;axis off;

%% Second Step :Manually choose 8 corresponding points from the two views.

Point_Image1= [482 263; 483 307; 488 345; 527 345; 563 347; 561 305;558 267; 516 264 ];
figure
imshow(img1)
hold on
m1=Point_Image1;
plot(Point_Image1(:,1), Point_Image1(:,2),'go','LineWidth',4,'MarkerEdgeColor','r')

Point_Image2= [ 440 264;440 305; 445 348; 486 351; 522 351; 522 310; 522 268; 478 267 ];
figure
imshow(img2)
hold on
m2=Point_Image2;
plot(Point_Image2(:,1), Point_Image2(:,2),'go','LineWidth',4,'MarkerEdgeColor','r')


%% Getting Matrix F

F = EightPointAlgorithm(Point_Image1,Point_Image2);

%% Getting Omega and Tau
[ omega, tauCross ] = DecomposeEssential( F );
disp('Estimated Omega:'); disp(omega);
disp('Estimated Taue Cross:'); disp(tauCross);
%% EpipolarLines In Image 1 
figure
imshow(img1)
hold on
epiLines1 = GenerateEpipolarLines(F',Point_Image2);
edgePoints = lineToBorderPoints(epiLines1,size(img1));
line(edgePoints(:,[1,3])',edgePoints(:,[2,4])','LineWidth',2);
plot(Point_Image1(:,1), Point_Image1(:,2),'go','LineWidth',4,'MarkerEdgeColor','r')

hold off;

%% EpipolarLines In Image 2 >>>
figure
imshow(img2)
hold on
epiLines2 = GenerateEpipolarLines(F,Point_Image1);
edgePoints = lineToBorderPoints(epiLines2,size(img2));
line(edgePoints(:,[1,3])',edgePoints(:,[2,4])','LineWidth',2);
plot(Point_Image2(:,1), Point_Image2(:,2),'go','LineWidth',4,'MarkerEdgeColor','r')

hold off;



