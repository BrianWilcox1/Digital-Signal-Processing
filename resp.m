function [H,f] = resp(b,a,N)
n2=2*N;
if nargout == 2
    f = [0:1/n2:.5] ;
end
num=fft(b,n2);
den=fft(a,n2);
n1=N+1;
H=num(1:n1)./den(1:n1); 