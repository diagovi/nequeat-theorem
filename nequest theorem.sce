
clear
close
clc


n1 = input('Enter the number of signals = ');
for j = 1:n1
    a(j) = input("Enter amplitude of the "+string(j)+" signal = ");
end;

for j = 1:n1
    f(j) = input("Enter frequency of the "+string(j)+" signal = ");
end;



t = 0:0.001:1; // time index
xt = 0;
for j = 1:n1
   xt = xt + a(j)*cos(2*%pi*f(j)*t);
end;

figure
fs = input('Enter sampling frequency greater than twice the maximum frequency of inputs = ');
T = 1/fs;
n = 0:fs;
nT = n*T;
xn = 0;
for j = 1:n1
   xn = xn + a(j)*cos(2*%pi*f(j)*nT);
end;
subplot(412)
plot2d3(n,xn)
xlabel("sampling number");
ylabel("Amplitude");
title("sampled signal in discrete form");
