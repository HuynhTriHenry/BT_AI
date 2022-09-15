l1=50;l2=15;l3=5;l4=30;l5=25;l6=25;l7=20;
clc
syms t1 t2 t3 pi
for t1=0:0.5:2*pi
	for t2=0:0.5:pi
        for t3=0:0.5:2*pi
            Px=- l5*sin(t1 + t2) - l4*sin(t1);
            Py=l5*cos(t1 + t2) + l4*cos(t1);
            Pz= l1 + l2 + l3 - l6 - l7;
            plot3(Px,Py,Pz,"*");
            hold on
        end
    end
end