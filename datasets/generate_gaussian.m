% generate artificial data 
close all;
clear;clc;

%% reproducible
seed = 2019;
rng(seed);

%% cluster 1
mu_1 = [10 20];
SIGMA_1 = [5,0;0,5];
cluster_1 = mvnrnd(mu_1,SIGMA_1,200);

%% cluster 2
mu_2 = [30 20];
SIGMA_2 = [5,0;0,5];
cluster_2 = mvnrnd(mu_2,SIGMA_2,200);

%% cluster 3
mu_3 = [20 40];
SIGMA_3 = [5,0;0,5];
cluster_3 = mvnrnd(mu_3,SIGMA_3,200);

cluster=[cluster_1;cluster_2;cluster_3];
plot(cluster(:,1),cluster(:,2),'.b');hold on;
% csvwrite('toy.csv',cluster);

%% generate test set %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% cluster 1 test
cluster_1_test = mvnrnd(mu_1,SIGMA_1*0.8,20);

%% cluster 2 test
cluster_2_test = mvnrnd(mu_2,SIGMA_2*0.8,20);

%% cluster 3
cluster_3_test = mvnrnd(mu_3,SIGMA_3*0.8,20);

cluster_test=[cluster_1_test;cluster_2_test;cluster_3_test];
plot(cluster_test(:,1),cluster_test(:,2),'ob');hold on;

%%
outliers = [
    [12,32.3]; [29,41.1];[37,26.5];[7,7.1];
    [16,31];[12,10.3];[20,16.1];[25.3,12];
    [30, 31];[30.1,8];[23,47.6];[39.5,31];
    [6, 38];[2,35.3];[8,9];[18,10];
    [11, 31.3];[14,6];[19,24];[37,39];
    [4, 43];[0.5,16];[22,8];[36,9];
    [21, 24.3];[33,45];[9.5,44];[36.6,30.3];
    [4, 30];[1,29];[29.3,9];[38,15.1];
    [24.1,29];[36.1,34];[21,19]; [33,11.1];
    [33,36];[0.3,22];[39,21];[11.3,46.1];
];
plot(outliers(:,1),outliers(:,2),'or');hold on; grid on 
title('gaussian dataset');

label = [zeros(60,1);ones(40,1)];
test = [cluster_test;outliers];
test = [test,label];
figure;plot(test(:,1),test(:,2),'.b');hold on; grid on 
% csvwrite('test/toy_test.csv',test);

