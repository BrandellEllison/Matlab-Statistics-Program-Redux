function [A] = userstat(vector)
%  Calculates the mean, median, mode, 
%  min, and max of an input vector
%
%  Inputs:
% * A vector containing data along a 
%   single dimension.
%
%  Outputs:
% * Data statistics related to contents
% * length of vector
%   
% 
%
format bank
rown={'Mean (1)','Median (2)','Mode (3)','Range(4)','Variance (5)','Standard Dev. (6)','RSD (7)','Minimum (8)','Maximum (9)','Count (10)'};
n=min(size(vector));
for i=1:n
    A(1,i) = mean(vector(:,i));
    A(2,i) = median(vector(:,i));
    A(3,i) = mode(vector(:,i));    
    A(4,i) = max(vector(:,i))-min(vector(:,i));
    A(5,i) = var(vector(:,i));             %variance= sum(deviation^2)/length(x)
    A(6,i) = std(vector(:,i));             %STD = variance^2
    A(7,i) = std(vector(:,i))/mean(vector(:,i)); %RSD
    A(8,i) = min(vector(:,i));
    A(9,i) = max(vector(:,i));
    A(10,i) = length(vector(:,i));
B=table(A(:,i),'RowNames',rown)
end
end