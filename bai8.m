l1=15;l2=20;l3=30;l4=45;l5=12;l6=25;l7=25;
clc
syms t1 t2 t3 t4 pi
for t1=0:0.5:2*pi
	for t2=0:0.5:pi
        for t3=0:0.5:2*pi
            for t4=0:0.5:pi
             Px=sin(t1)*(l4*sin(t2 + t3) + l3*sin(t2) + l5*sin(t2 + t3 + t4) + l6*sin(t2 + t3 + t4));
             Py=-cos(t1)*(l4*sin(t2 + t3) + l3*sin(t2) + l5*sin(t2 + t3 + t4) + l6*sin(t2 + t3 + t4));
             Pz= l1 + l2 + l4*cos(t2 + t3) + l3*cos(t2) + l5*cos(t2 + t3 + t4) + l6*cos(t2 + t3 + t4);
             plot3(Px,Py,Pz,"*");
             hold on
            end 
        end
    end
end
 