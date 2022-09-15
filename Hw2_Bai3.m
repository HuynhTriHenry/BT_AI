l1=40;l2=15;l3=10;l4=30;l5=20;l6=25;l7=18;
clc
syms t1 t2 t3 t4 t5 pi
for t1=0:1:2*pi
	for t2=0:1:pi
		for t3=0:1:pi
            for t4=0:1:2*pi
                Px= - cos(t3)*sin(t1) - cos(t1)*cos(t2)*sin(t3), l2*cos(t1) - l6*(cos(t3)*sin(t1) + cos(t1)*cos(t2)*sin(t3)) - l5*(sin(t1)*sin(t3) - cos(t1)*cos(t2)*cos(t3)) - l3*sin(t1) - l7*(cos(t4)*(sin(t1)*sin(t3) - cos(t1)*cos(t2)*cos(t3)) + cos(t1)*sin(t2)*sin(t4)) + l4*cos(t1)*cos(t2) + l8*cos(t1)*sin(t2);
                Py= cos(t1)*cos(t3) - cos(t2)*sin(t1)*sin(t3), l5*(cos(t1)*sin(t3) + cos(t2)*cos(t3)*sin(t1)) + l6*(cos(t1)*cos(t3) - cos(t2)*sin(t1)*sin(t3)) + l3*cos(t1) + l2*sin(t1) + l7*(cos(t4)*(cos(t1)*sin(t3) + cos(t2)*cos(t3)*sin(t1)) - sin(t1)*sin(t2)*sin(t4)) + l4*cos(t2)*sin(t1) + l8*sin(t1)*sin(t2);
                Pz=   l1 - l7*(cos(t2)*sin(t4) + cos(t3)*cos(t4)*sin(t2)) + l8*cos(t2) - l4*sin(t2) - l5*cos(t3)*sin(t2) + l6*sin(t2)*sin(t3);
                plot3(Px,Py,Pz,"*");
                hold on
            end
        end
    end
end        