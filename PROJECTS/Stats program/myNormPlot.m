function [] = myNormPlot(x,mu,sigma,criteria)
if isvector(x)== 0
error('x must be an array containing two elements minimum.')
end
x=min(x):0.01:max(x);
if isempty(mu||sigma)== 1
f=normpdf(x,0,1);
else
f=normpdf(x,mu,sigma);
end
g=norminv(x,mu,sigma);
h=normcdf(g);
figure
subplot(1,2,1)
plot(x,f)
if isempty(criteria) == 0
xlabel(criteria)
else isempty(criteria) == 1;
    xlabel('Criteria [Units]')
end
ylabel('Probability')
subplot(1,2,2)
plot(x,h)
if isempty(criteria) == 0
xlabel(criteria)
else isempty(criteria) == 1;
    xlabel('Criteria [Units]')
end
ylabel('Probability')
%{
Phase out with the following
x=linspace(0,C(9,1),C(10,1));
PDF = normpdf(x, C(1,1), C(6,1));
CDF = normcdf(x, C(1,1), C(6,1));
figure
subplot(1,2,1)
plot(x,PDF)
xlabel('Criteria (Units)')
ylabel('Probability')
axis([min(x)-0.01,max(x)+.001,min(PDF),max(PDF)+0.001])
subplot(1,2,2)
ylabel('Cumulative Probability (Decimal)')
plot(x,CDF)
axis([min(x)-0.01,max(x)+.001,min(CDF),1])
%}

end