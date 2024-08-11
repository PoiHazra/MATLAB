syms x
f=input('Enter the function:');
fL=input('Enter the interval on which the function is defined:');
yr=input('Enter the axis of rotation y = c (enter only c value):');
iL=input('Enter the integration limits:');
Volume=pi*int((f-yr)^2,iL(1),iL(2));
disp(['Volome is:',num2str(double(Volome))])
fx=inLine(vectorize(f));
xvals=linspace(fL(1),fL(2),201);
xvalsr=fliplr(xvals);
xivals=linspace(iL(1),iL(2),201);
xivalsr=fliplr(xivals);
xLim=[fL(1) fL(2)+0.5];
ylim=fx(xlim);
figure('Position',[100 200 560 420])
subplot(2,1,1)
hold on;
plot(xvals,fx(xvals),'-b','LineWidth',2);
fill([xvals xvalsr],[fx(xvals) ones(size(xvalsr))*yr],[0.8 0.8 0.8],'FaceAlpha',0.8)
plot([fL(1) fL(2)],[yr yr],'-r','LineWidth',2);
legend('Function Plot','Filled Region','Axis of Rotation','Location','Best');
tilte('Function y=f(x) and Region');
set(gca,'XLim',xlim)
xlabel('x-axis');
ylabel('y-axis');
[X,Y,Z]= cylinder(fx(xivals)- yr,100);
figure('Position',[700 200 560 420])
Z=iL(1) + Z.*(iL(2)-iL(1));
surf(Z,Y+yr,X,'EdgeColor','none','FaceColor','flat','FaceAlpha',0.6);
hold on;
plot([iL(1) iL(2)],[yr yr],'-r','Linewidth',2);
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
view(22,11);
