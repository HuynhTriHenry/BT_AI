l1=45;l2=30;l3=10;l4=30;l5=30;l6=25;l7=25;
clc
syms t1 t2 t3 t4 pi
for t1=0:0.5:2*pi
	for t2=0:0.5:pi
        for t3=0:0.5:2*pi
           
             Px=cos(t1)*sin(t2)*(l4 + l5);
             Py=sin(t1)*sin(t2)*(l4 + l5);
             Pz=  l1 + l2 + l3 + l4*cos(t2) + l5*cos(t2);
             plot3(Px,Py,Pz,"*");
             hold on
           
        end
    end
end
