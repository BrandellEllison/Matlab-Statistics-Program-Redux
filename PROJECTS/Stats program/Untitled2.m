clear,clc,close all
% Function variant assumes that columns will be smaller than rows.   
% Processes data on a columnwise basis
% Do not use more than one file
clear,clc,close all,format bank
x=double.empty
[fn,pn,fi]=uigetfile({'*.mat';'*.m';'*.xlsx';'*.txt';'*.*'},'Select list','Normal.txt');
if isstruct(fn) == 1 ;
  x=fn.x
  fnx(:,1) = fn.y; 
elseif fi == 3; %is an excel file
        fnx=xlsread(fn,-1);
else isstruct(fn) == 0;
    fnx=double(fn); % converts from var to array 
end
[row,column] = size(fnx);
if row < column;
    fnx = fnx'
end
C=userstat(fnx);
if isempty(x) == 1;
x=linspace(0,C(9,1),C(10,1));
end
PDF = normpdf(x, C(1,1), C(6,1));
CDF = normcdf(x, C(1,1), C(6,1));
figure
subplot(1,2,1)
plot(x,PDF)
xlabel('Criteria (Units)')
ylabel('Probability')
%axis([min(x),max(x),min(PDF),max(PDF)])
subplot(1,2,2)
ylabel('Cumulative Probability (Decimal)')
plot(x,CDF)
%axis([min(x),max(x),min(CDF),1])
histogram(fnx);
myNormPlot(ab,pa(1),pa(6),'Criteria [Units]');
