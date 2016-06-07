clear,clc,close all,format bank
[file,filter_specs,path]=uigetfile({'*.mat';'*.txt';'*.*'},'load file','*.mat')
a=load(fullfile(file))
i=1:1:min(size(a))
while i
subplot(2,min(size(a)),i)
normplot(a(i))
%userstat(a(i))
subplot(2,min(size(a))/2,i+1)
probplot(a(i))
end