function [M,W] = ordr(fp,fs,R,A)
%
tm=10^(R/20);
d1=(tm-1)/(tm+1);
d2=10^(-A/20)  ;
M=(10*log10(d1*d2)+13)/(14.6*(fp-fs));
M=ceil(M)+1;
W=[1/d1 1/d2];