clear all
clc
close all 

a = .1; %controls degree of decay
b = 1; %upper bound
c = 1; %lower bound
L = 1; %the surrounding inputs to every neuron but neuron I
L2 = 10; %the following are logarithmic increases
L3 = 100;
L4  = 1000;
L5 =10000;
xactivity6 = []; %holds the value for neurons with different Ls
xactivity7 = []; 
xactivity8 = [];
xactivity9 = []; 
xactivity10 = [];
tic

for I = [.1:.1:10000] %various inputs to ith neuron, increasing in .1 intervals
    xi = (((b* I))/ (a + L+I)); %activity of the ith neuron solved in equilibrium
xactivity6 = [xactivity6 xi];
end 
figure ('Name', 'Effects of Increasing Surrounding Neuronal Activity', 'NumberTitle', 'off') %plotting graph items
subplot (2,1 ,1) 
semilogx(xactivity6) 
title ('Logarithmic Increase in Surrounding Activity')
ylabel('Neuron X Activity') 
xlabel ('Input to Neuron X') 
hold on 

for I = [.1:.1:10000]
    xi2 = ((b* I)/ (a + L2+I));
xactivity7 = [xactivity7 xi2];
end 

semilogx(xactivity7) 

for I = [.1:.1:10000]
    xi3 = ((b* I)/ (a + L3+I));
xactivity8 = [xactivity8 xi3];
end 

semilogx(xactivity8) 

for I = [.1:.1:10000]
    xi4 = ((b* I)/ (a + L4+I));
xactivity9 = [xactivity9 xi4];
end 

semilogx(xactivity9) 

for I = [.1:.1:10000]
    xi5 = ((b* I)/ (a + L5+I));
xactivity10 = [xactivity10 xi5];
end 

semilogx(xactivity10)
legend ('L = 1', 'L = 10', 'L = 100', 'L=1000', 'L=10000', 'Location', 'northwest') 

a = .1;
b = 1;
L = 1;
L2 = 2; 
L3 = 3;
L4  = 4;
L5 =5;
xactivity = [];
xactivity2 = []; 
xactivity3 = [];
xactivity4 = []; 
xactivity5 = [];

for I = [.1:.1:10000]
    xi = ((b* I)/ (a + L+I));
xactivity = [xactivity xi];
end 

subplot(2,1,2) 
semilogx(xactivity) 
title ('Linear Increase in Surrounding Activity')
ylabel('Neuron X Activity') 
xlabel ('Input to Neuron X')
hold on

for I = [.1:.1:10000]
    xi2 = ((b* I)/ (a + L2+I));
xactivity2 = [xactivity2 xi2];
end 

semilogx(xactivity2) 

for I = [.1:.1:10000]
    xi3 = ((b* I)/ (a + L3+I));
xactivity3 = [xactivity3 xi3];
end 

semilogx(xactivity3) 

for I = [.1:.1:10000]
    xi4 = ((b* I)/ (a + L4+I));
xactivity4 = [xactivity4 xi4];
end 

semilogx(xactivity4) 

for I = [.1:.1:10000]
    xi5 = ((b* I)/ (a + L5+I));
xactivity5 = [xactivity5 xi5];
end 

semilogx(xactivity5)

legend ('L = 1', 'L = 2', 'L = 3', 'L = 4', 'L = 5') 
hold off
toc






