l1=40;l2=15;l3=10;l4=30;l5=20;l6=25;l7=18;
clc
syms t1 t2 t3 t4 pi
for t1=0:0.5:pi
	for t2=0:0.5:pi/2
		for t3=0:0.5:pi/2
            for t4=0:0.5:pi
                Px= sin(t1)*(l1 + l5*sin(t2+t3) + l4*sin(t2) + l6*cos(t2+t3+t4));
                Py= -cos(t1)*(l2 + l5*sin(t2 + t3) + l4*sin(t2) + l6*cos(t2 + t3 + t4));
                Pz= l1 + l3 + l5*cos(t2 + t3) + l4*cos(t2) - l6*sin(t2 + t3 + t4);
                plot3(Px,Py,Pz,"*");
                hold on
            end
        end
    end
end        