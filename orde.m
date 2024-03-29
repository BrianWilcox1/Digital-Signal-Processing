function M = orde(fp,fs,R,A)
OmegaP = 2*tan(pi*fp);
OmegaS = 2*tan(pi*fs);
K = OmegaS/OmegaP;
K2=1/(K^2);
epsilon = sqrt(10^(R/10)-1);
delta = sqrt(10^(A/10)-1);
eta = delta/epsilon;
eta2=1/(eta^2);
M = ceil((ellipke(K2)*ellipke(1-eta2))/(ellipke(1-K2)*ellipke(eta2)));
