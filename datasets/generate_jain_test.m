close all;
clear;clc;

data = csvread('train/jain.csv');
figure;plot(data(:,1),data(:,2),'.b');hold on;grid on;

normal =[
    [15,15];[16,14];[17,12];[16,11];[19,8];
    [18,10];[21,7];[22,6];[23,6];[24,5];
    [24,3.8];[25.5,6];[26,3];[27,4.5];[29,3.5];
    [31,5.2];[33,6];[34,8];[35,8.5];[36,7.7];
    [37,10];[38,12];[39,14];[39.7,15.1];[41,14.7];
    [4, 17];[6,22];[10,23];[16,27];[19,23];
    [13, 25];[21,20];[23,16];[25,19.1];[6,19];
    [9,25.1];[14,23];[22,21];[7,24];[6,15];
    ];

outliers = [
    [4,6];[9,11];[11,3];[15,4];[26,11];
    [31,12.2];[36,22];[29,27];[41,21];[40,4];
    ];

plot(normal(:,1),normal(:,2),'ob');hold on
plot(outliers(:,1),outliers(:,2),'or');
title('jain dataset');

label = [zeros(40,1);ones(10,1)];
test = [normal;outliers];test = [test,label];
figure;plot(test(:,1),test(:,2),'.b');hold on; grid on
csvwrite('test/jain_test.csv',test);
