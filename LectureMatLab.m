clearvars %clear all variables 
close all %close all figures

x = 3:9; %set x to be a vector of inputs
y=[-2 3 4 6 13 14 16]; %a vector of inputs
plot(x,y,'.','markersize',25)
xlabel('x') %label the x axis
ylabel('y') %label the y axis

%First we fit a line to this ata
n = numel(x); %number of elements in x
A = [ones(n,1) x'] %create the matriz for the regression
coeff = A\y' %compute the coefficients by least squares
xplot = 2:0.01:10; %points where we want to evaluate fitted model
yfit = coeff(1) + coeff(2)*xplot; %fitted model
hold on %don't erase the points
plot(xplot,yfit,'-') %plot the linear fit