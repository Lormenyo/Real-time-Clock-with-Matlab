function [x,y]= getCircle(center,r)


t=linspace(0,2*pi);
x=[r.*cos(t) + center(1)];
y=[r.*sin(t) + center(2)];

end
