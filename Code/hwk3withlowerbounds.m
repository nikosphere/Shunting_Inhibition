clear all
clc
close all 

a = .1; %controls degree of decay
b = 1; %upper bound
c = 1; %lower bound, now no longer non existent like in the previous sets of graphs
L = 1; %the surrounding inputs to every neuron but neuron I
L2 = 10; %the following are logarithmic increases
L3 = 100;
xactivity6 = []; %holds the value for neurons with different Ls
xactivity7 = []; %I got rid of the lowest and highest Ls because the graphs looked like a big mess with all Ls included.
xactivity8 = [];
tic

for I = [.1:.1:1000] %various inputs to ith neuron, increasing in .1 intervals
    xi = (((b* I)- c * L)/ (a + L+I)); %activity of the ith neuron solved in equilibrium
xactivity6 = [xactivity6 xi];
end 
figure ('Name', 'Effects of Increasing Surrounding Neuronal Activity', 'NumberTitle', 'off') %plotting graph items
subplot (1,1 ,1) 
semilogx(xactivity6, 'b') 
title ('Logarithmic Increase in Surrounding Activity')
ylabel('Neuron X Activity') 
xlabel ('Input to Neuron X') 
hold on 

for I = [.1:.1:1000]
    xi2 = (((b* I)- c*L2)/ (a + L2+I));
xactivity7 = [xactivity7 xi2];
end 

semilogx(xactivity7, 'b--') 

for I = [.1:.1:1000]
    xi3 = (((b* I)-c*L3)/ (a + L3+I));
xactivity8 = [xactivity8 xi3];
end 

semilogx(xactivity8, 'b:') 




c = 0; %this set of basically the same code exists to contrast what the graphs
%look like when c = 0 rather than c = 1 like beforehand
a = .1;
b = 1;
L = 1;
L2 = 10; 
L3 = 100;
xactivity = [];
xactivity2 = []; 
xactivity3 = [];
xactivity4 = []; 
xactivity5 = [];

for I = [.1:.1:1000]
    xi = (((b* I)-c*L)/ (a + L+I));
xactivity = [xactivity xi];
end 

subplot(1,1,1) 
semilogx(xactivity, 'r') 
title ('Linear Increase in Surrounding Activity')
ylabel('Neuron X Activity') 
xlabel ('Input to Neuron X')


for I = [.1:.1:1000]
    xi2 = (((b* I)-c*L2)/ (a + L2+I));
xactivity2 = [xactivity2 xi2];
end 

semilogx(xactivity2, 'r--') 

for I = [.1:.1:1000]
    xi3 = (((b* I)-c*L3)/ (a + L3+I));
xactivity3 = [xactivity3 xi3];
end 

semilogx(xactivity3, 'r:' ) 



legend ('L = 1, c = 1', 'L = 10, c = 1', 'L = 100, c = 1', 'L = 1, c = 0', 'L = 10, c = 0', 'L = 100, c = 0', 'Location', 'northwest') 
hold off
toc






