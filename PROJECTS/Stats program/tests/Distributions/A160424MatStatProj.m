file=load(uigetfile)
x=70:.1:130; %
a=mean(file);
b=std(file);
c=normpdf(x,a,b);
d=normcdf(x,a,b);
e=max(size(file));
z=1.64;%
u_conf= a+z*(b/(e)^.5);
lo_conf= a-z*(b/(e)^.5);
subplot(1,2,1)
plot(x,c,'r')
title('pdf')
xlabel('slump (mm)')
ylabel('probability')
axis([70,130,0,0.05])
subplot(1,2,2)
plot(x,d,'b')
title('cdf')
xlabel('slump (mm)')
ylabel('cumulative probability')
axis([70,130,0,1])
sprintf('The mean slump is %.4g mm, and the standard deviation is %.3g mm.\n\n Based on %0.1f samples, a %2.1f%% confidence interval for the average slump \n of this concrete mix is between %.2f mm and %.2f mm \n',a,b,e,90,lo_conf,u_conf)
 
z = pdf(pd,x)
figure
plot(x,z)



