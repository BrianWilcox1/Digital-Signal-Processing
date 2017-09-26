%Author: Brian Wilcox
%Date: 1/3/2017
%Class: EECE 5666
%Problem: 2.67

%Define the domain of n
n = 0:1:99;
%Define h1(n)
h1 = [1, 1/2, 1/4, 1/8, 1/16, 1/32, zeros(1,94)];
%Define h2(n)
h2 = [ones(1,5), zeros(1,95)];

%h1 and h2 are cascaded in series which means we convolve these two
%signals using Filter where a = 1
a = 1;
h12=filter(h1,a,h2);

%For the impulse response the formula consisting of x values for y3 is 
%changed from y3(n) = 1/4*x(n) + 1/2*x(n-1) + 1/4*x(n-2) to
%h3(n) = 1/4*delta(n) + 1/2*delta(n-1) + 1/4*delta(n-2) which is the same
%as {1/4, 1/2, 1/4, 0, 0, ... 0}
h3 = [1/4, 1/2, 1/4, zeros(1,97)];

%Since h12 and h3 are in a parallel cascade with one another, one can add
%these two signals together.
h123 = h12 + h3;

%We can treat y(n) as h4(n). Additionally, v(n) can be substituted for the impulse values: as follows
%From y(n) = 0.9 * y(n-1) -0.81 * y(n-2) + v(n) + v(n-1) to
% h4(n) = 0.9 * h4(n-1) -0.81 * h4(n-2) + delta(n) + delta(n-1)
%Let's assume the system is relaxed such that h4(-1) = 0 and h4(-2) = 0;
%Therefore we need a temporary structure that contains these past values
%and is two longer than h4(n) (spans from -2 to 99)
h4_temp = zeros(1,length(n) + 2);
syms d1 d2;

for i =1:length(n)
    %for h4_temp we are storing values from 3 to 102 and accessing old
    %values including h4_temp(1) and h4_temp(2)
    %kroneckerDelta is the function for delta. We want a delta at n = 0 and n =2. The
    %indexing for kroneckerDelta must be subtracted by one because of
    %Matlab indexing. Uses syms datatype
    d1 = sym(i-1);
    d2 = sym(i-2);
    h4_temp(i+2) = 0.9*h4_temp(i+1) - 0.81 * h4_temp(i) + kroneckerDelta(d1) + kroneckerDelta(d2);
end
%Take only the 100  values that the impulse response is derived 
%for (0 to 99)
h4 = h4_temp(3:102);
h_total=filter(h4,a,h123);
stem(n, h_total)
title('Total Impulse h(n) for Problem 2.67');
xlabel('Current n value');
ylabel('Impulse value h(n)');
