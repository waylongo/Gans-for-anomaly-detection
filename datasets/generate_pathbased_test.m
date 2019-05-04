close all;
clear;clc;

data = csvread('train/pathbased.csv');
figure;plot(data(:,1),data(:,2),'.b');hold on;grid on;

normal =[
    [10,16];[11,18];[12,12];[13,14];[15,12];
    [12.5,19];[13.5,17];[14.9,19];[9,13.8];[16,15.2];
    [21,15];[22,14];[21.5,18];[23.3,13];[24.3,15.9];
    [23.4,19];[25.1,12];[26.3,17];[27,15];[26.7,19.9];
    [8,7.7];[5,14];[6,21];[9,26.8];[14,30];
    [20,31.2];[26,29];[31,22];[32,12];[27,5];
    ];

outliers = [
    [16,26.7];[15.8,4.8];[19,23.5];[22.3,25.2];[25.2,24];
    [12.5,25];[20.1,3.3];[24.3,1.3];[4.7,6.6];[18,7.8];
    [2,15];[7.5,31];[31,3.3];[23,7.1];[34,6];
    [4.4,24.7];[18,34.4];[29,31];[33.3,24.7];[11,2];
    ];

plot(normal(:,1),normal(:,2),'ob');hold on
plot(outliers(:,1),outliers(:,2),'or');
title('pathbased dataset');

label = [zeros(30,1);ones(20,1)];
test = [normal;outliers];test = [test,label];
figure;plot(test(:,1),test(:,2),'.b');hold on; grid on
% csvwrite('test/pathbased_test.csv',test);
