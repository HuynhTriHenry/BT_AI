l1=40;l2=15;l3=10;l4=30;l5=20;l6=25;l7=18;
clc
syms t1 t2 pi
for t1=0:1:pi
	for t2=0:1:pi/2
                Px= -l2*sin(t1 + t2) - l1*sin(t1);
                Py= 0;
                Pz= -l2*cos(t1 + t2) - l1*cos(t1);
                plot3(Px,Py,Pz,"*");
                hold on
            end
        end
    end
end        