clear all; close all; clc

M=[ -9.9322397047558009e-001 -1.1621593897879867e-001
 -1.1621593897879863e-001  9.9322397047558009e-001];

% x1=-30:0.2:29;
% y1=-30:0.2:29;
x1=-19:0.1:19;
y1=-19:0.1:19;
o1=1;
o2=1;

l1=length(x1);
l2=length(y1);
for i=1:l1
    for j=1:l2
        vx=M*[x1(i)-o1;y1(j)-o2];
        x=vx(1);
        y=vx(2);
        num=sin(sqrt(x^2+y^2))-0.5;
        den=(1+0.001*(x^2+y^2))^2;
        zs(i,+j)=0.5+num/den+1;
        xs(i,j)=x;
        ys(i,j)=y;
    end
end



mesh(xs,ys,zs)
colormap hsv
hold on
contour(xs,ys,zs)