clc
clear all
syms x
f=sin(2*x)+cos(3*x)
figure(1)
ezplot(f)
figure(2)
ezplot(f,[0,3])