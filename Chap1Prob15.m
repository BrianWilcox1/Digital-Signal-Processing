%Author: Brian Wilcox
%EECE 5666
%Date: 1/28/2017
%Homework # 5, Problem 1.15

%Part a 
%define n range
n = 0:1:99;
%Define fundamental Frequenxies
F0 = [500, 2000, 3000, 4500];
len = length(F0);
%Define Sampling Frequency
FS = 5000;
x = zeros(len,length(n));
%Part a
for i =1:len
    %Compute the value of x for each frequency
    x(i,1:length(n)) = sin(2*pi*F0(i)/FS.*n);
    figure(i)
    stem(n,x(i,1:length(n)));
    xlabel('n')
    ylabel('x(n)')
    s = strcat('Plot of x(n) for Fundamental Frequency =  ',   num2str(F0(i)), ' Hz, Sampling Frequency = 5000 Hz');
    title(s)
end

%Part b
%Set Fundamental and Sampling frequencies for Part b
F0b = 2000;
FSb = 50000;
%Define x for part b
xb(1:length(n)) = sin(2*pi*F0b/FSb.*n);
figure(5)
stem(n,xb);
xlabel('n')
ylabel('x(n)')
s = strcat('Plot of x(n) for Fundamental Frequency =  ',   num2str(F0b), ' Hz, Sampling Frequency = 50000 Hz');
title(s)
%initialize y
%Set y = to only the even n values of xb
y = xb(1:2:99);
figure(6)
stem(0:2:98,y);
xlabel('n')
ylabel('y(n)')
s = strcat('Plot of y(n) for Fundamental Frequency =  ',   num2str(F0b), ' Hz, Sampling Frequency = 50000 Hz');
title(s)