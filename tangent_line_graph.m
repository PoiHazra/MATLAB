%Graph of a curve and its tangent line in the neighbourhood of a point
syms x 
y=input('Enter the function f in terms of x')
x1=input('Enter x value at which tangent is need to be plot')
D=[x1-2 x1+2]  %Region about x1 (or neighbourhood of x1)
ezplot(y,D)    %graph of the curve in D
hold on

%   Equation of the tangent line passing through x1

yd=diff(y,x);    %differentiation in matlab
slope=subs(yd,x,x1);%finding the slope at x1
y1=subs(y,x,x1)     %finding the value of the function at the given point
plot(x1,y1,'ko')    %plot the point

Tgt_line=slope*(x-x1)+y1   %Tangent line equation at the given point
h=ezplot(Tgt_line,D);      %Plotting the Tangent Line
set(h,'color','r') 