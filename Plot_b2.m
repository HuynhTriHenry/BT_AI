l1=50;l2=60;l3=20;l4=60;l5=40;
clc
syms t1 t2 pi
for t1=0:0.5:2*pi
	for t2=0:0.5:pi
        Px=l4*cos(t1 + t2) + l2*cos(t1);
        Py=l4*sin(t1 + t2) + l2*sin(t1);
        Pz=     l1 + l3 - l5;
        plot3(Px,Py,Pz,"*");
        hold on
    end
end        