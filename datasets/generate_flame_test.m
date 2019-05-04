close all;
clear;clc;

data = csvread('train/flame.csv');
figure;plot(data(:,1),data(:,2),'.b');hold on;grid on;

normal =[
    [1,22];[2,21];[3.3,20.5];[4.4,17.7];[5,16];
    [3.1,18.2];[4,19.1];[6,17];[8,16.6];[7.4,15.5];
    [6,17.8];[9,16];[10,18];[11.1,18.6];[12,21];
    [8.8,19.4];[10.5,20.3];[12,20];[13,21];[14,22.9];
    [13,23];[7,18.5];[5,25];[5.5,23.7];[7.7,23];
    [6,25];[7.5,25];[9,24];[8.2,26];[9.5,23.9];
    [6.2,22];[7,20];[5,19];[6,15.7];[10.2,17];
    [6,27];[10,26];[8,21];[8.4,18];[2.5,19.5];
    ];

outliers = [
    [3,23.5];[11.5,24];[2,16];[3.4,14.7];[13,15.6];
    [13,26];[14,18.7];[2.2,25.5];[12,27];[14.7,16.6];
    ];

plot(normal(:,1),normal(:,2),'ob');hold on
plot(outliers(:,1),outliers(:,2),'or');
title('flame dataset');

label = [zeros(40,1);ones(10,1)];
test = [normal;outliers];test = [test,label];
figure;plot(test(:,1),test(:,2),'.b');hold on; grid on
% csvwrite('test/flame_test.csv',test);

