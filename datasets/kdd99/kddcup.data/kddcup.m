close all;
clear;clc;

all_data = importdata('network.csv');
% all_data = all_data(1:150000,:);
data = all_data(:,1:41);
label = all_data(:,42);
[N, d] = size(data);

for i=1:d
    figure;plot(data(:,i),'x');
    pause(1);
end

% data = data(:, [2, 3, 23,24, 25,29,31,32,33,34:38 ]); % possibile
% figure;plot(data(:,1),data(:,2),'.b');
% normalization
for i=1:d
    data(:,i) = (data(:,i) - nanmean(data(:,i)))/nanstd(data(:,i));
end
% pca
[COEFF SCORE latent]=princomp(data(1:41));
network = data(:,1:2);
figure;plot(network(:,1),network(:,2),'.b');