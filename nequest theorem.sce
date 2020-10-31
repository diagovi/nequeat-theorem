
// To verify the sampling theorm


//clear variables if any
clear
//close any graph window
close
//clear console
clc



// to get the freq. and amplitude of signals
n1 = input('Enter the number of signals = ');
//amplitude
for j = 1:n1
    a(j) = input("Enter amplitude of the "+string(j)+" signal = ");
end;
//frequency
for j = 1:n1
    f(j) = input("Enter frequency of the "+string(j)+" signal = ");
end;



t = 0:0.001:1; // time index
// calculating x(t) = a1coswt + a2coswt +........
// w = 2XpiXf
xt = 0;
for j = 1:n1
   xt = xt + a(j)*cos(2*%pi*f(j)*t);
end;
//control many aspects of displaying Scilab graphics
figure
//selecting 1 in 4 row 1 column
subplot(411)
// plotting the x(t)
plot(t,xt)
//lables for plot
xlabel("time in sec");
ylabel("Amplitude");
title("Signal that has to be sampled");
//setting the axis to origin
aa1 = gca(); // get the current axes
aa1.x_location = 'origin'; //set x axis to origin--0
aa1.y_location = "origin"; //set y axis to origin--0



//Nyquist theorem applicable
//sampling frequency:  > maxF or 2(maxF)
fs = input('Enter sampling frequency greater than twice the maximum frequency of inputs = ');
//time period
T = 1/fs;
//no of divisions
n = 0:fs;
nT = n*T;
//finding and plotting the x(n)
xn = 0;
for j = 1:n1
   xn = xn + a(j)*cos(2*%pi*f(j)*nT);
end;
subplot(412)
plot2d3(n,xn)
//lables for plot
xlabel("sampling number");
ylabel("Amplitude");
title("sampled signal in discrete form");
//setting the axis to origin
aa2 = gca(); // get the current axes
aa2.x_location = 'origin'; //set x axis to origin--0
aa2.y_location = "origin"; //set y axis to origin--0



//Nyquist theorem applicable
//sampling frequency:  = 2(maxF)
fs = input('Enter sampling frequency equal to twice the maximum frequency of inputs = ');
//time period
T = 1/fs;
//no of divisions
n = 0:fs;
nT = n*T;
//finding and plotting the x(n)
xn = 0;
for j = 1:n1
   xn = xn + a(j)*cos(2*%pi*f(j)*nT);
end;
subplot(413)
plot2d3(n,xn)
//lables for plot
xlabel("sampling number");
ylabel("Amplitude");
title("sampled signal in discrete form");
//setting the axis to origin
aa3 = gca(); // get the current axes
aa3.x_location = 'origin'; //set x axis to origin--0
aa3.y_location = "origin"; //set y axis to origin--0



////Nyquist theorem  not applicable
//sampling frequency:  < 2(maxF) 
fs = input('Enter sampling frequency less than twice the maximum frequency of inputs = ');
//time period
T = 1/fs;
//no of divisions
n = 0:fs;
nT = n*T;
//finding and plotting the x(n)
xn = 0;
for j = 1:n1
   xn = xn + a(j)*cos(2*%pi*f(j)*nT);
end;
subplot(414)
plot2d3(n,xn)
//lables for plot
xlabel("sampling number");
ylabel("Amplitude");
title("sampled signal in discrete form");
//setting the axis to origin
aa4 = gca(); // get the current axes
aa4.x_location = 'origin'; //set x axis to origin--0
aa4.y_location = "origin"; //set y axis to origin--0

mprintf("a signal can be exactly reproduced if it is sampled at the rate fs which is greater than twice the maximum frequency of inputs")
