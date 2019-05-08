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
% plot(cluster_test(:,1),cluster_test(:,2),'ob');hold on;

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
% plot(outliers(:,1),outliers(:,2),'or');hold on; grid on 
title('gaussian dataset');

label = [zeros(60,1);ones(40,1)];
test = [cluster_test;outliers];
test = [test,label];
% figure;plot(test(:,1),test(:,2),'.b');hold on; grid on 
% csvwrite('test/toy_test.csv',test);

%% trajectory
traj_1 = [
    [28, 19.5];[28.7 ,18.5];[29.5, 18.7];[29.9, 18.3];[30.7, 19.1];
    [32, 19.6];[32.7, 20.4];[33.5, 21.4];[34.2, 20.1];[35.5,22.4];
    [37.1,22.6];[38.9, 22.1];[39.5,22.4];[41.3,21.8];[42.9,23.2];
    [44.5,23.5];[45, 25.1];[46.7, 24.5];[48.5,26.1];[49.6,25.3];
    ];
plot(traj_1(:,1), traj_1(:,2),'dr');hold on;

traj_2 = [
    [20,41.5]; [18.8, 39.7];[18.5,37.8];[18,36.6];[17.2,35.8];
    [17.1,32];[16.3,34.1];[15.5,31.3];[13.8,29.9];[13,28.9];
    [12.8,26.2];[12.2,27.4];[11.2,26.1];[10.9,24.2];[11.9,23];
    [10.5,23];[9.9,22];[8,21.2];[6.7,20.2];[5.5,18.7];

];
plot(traj_2(:,1), traj_2(:,2),'dr');hold on;


grid on

% csvwrite('test/toy_traj_1.csv',traj_1);
csvwrite('test/toy_traj_2.csv',traj_2);

