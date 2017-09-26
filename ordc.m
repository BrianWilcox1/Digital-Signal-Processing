function M = ordc(fp,fs,R,A)
OmegaP = 2*tan(pi*fp);
OmegaS = 2*tan(pi*fs);
K = OmegaS/OmegaP;
epsilon = sqrt(10^(R/10)-1);
delta = sqrt(10^(A/10)-1);
eta = delta/epsilon;
M = ceil(acosh(eta)/acosh(K));
