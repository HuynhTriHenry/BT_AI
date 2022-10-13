n=3;
R=20; 
L=300;
l2= 300;
l3= 300;
l4=50;
Z=0;
clc
syms t1 t2 pi l1 xa xb ya yb 

for i=1:1:3
    for j=1:1:3       
        %DAU X
        if ((i==j)||(i+j==4))
            %Dau /
            for t=0:0.05:1
                xa= (L/n)*(i-1);
                xb= (L/n)*i;
                ya=(L/n)*(j-1);
                yb= (L/n)* j ;
                X0 = (L/n)*(i-0.5);
                Y0 = (L/n)*(j-0.5);
    
                %DAU X
                X =(xa+30) +(xb-xa-60)*t;   %giam kich thuoc chu x
                Y =(ya+30) +(yb-ya-60)*t; 

                l1= Z+l4;
                c2= ((X)^2 +(Y)^2 -l2^2 - l3^2)/(2*l2*l3);
                s2 = sqrt(abs(1-c2^2));
                t2= atan2(s2,c2);

                c1= (Y*(l2 +l3*c2 )+ -X*l3*s2)/((l2+l3*c2)^2 +(l3*s2)^2);
                s1 = (-X*(l2+l3*c2)- Y*l3*s2)/((l2+l3*c2)^2 +(l3*s2)^2);
                t1= atan2(s1,c1);

                Px= -l2*sin(t1)-l3*sin(t1+t2);
                Py=  l2*cos(t1)+l3*cos(t1+t2);    
                Pz= l1-l4;

                axis([0  300  0  300])
                axis square
                axis on
                
                rectangle('Position',[0 0 100 100]);
                rectangle('Position',[100 0 100 100]);
                rectangle('Position',[200 0 100 100]);
                rectangle('Position',[0 100 100 100]);
                rectangle('Position',[100 100 100 100]);
                rectangle('Position',[200 100 100 100]);
                rectangle('Position',[0 200 100 100]);
                rectangle('Position',[100 200 100 100]);
                rectangle('Position',[200 200 100 100]);

                plot(Px,Py,'--.'); pause(0.01);
                xlabel('Truc x')
                ylabel('Truc y')
                grid on
                hold on
            end
            
            
            %Dau \
            for t=0:0.05:1
                xa= (L/n)*(i-1);
                xb= (L/n)*i;
                ya=(L/n)*(j-1);
                yb= (L/n)* j ;
                X0 = (L/n)*(i-0.5);
                Y0 = (L/n)*(j-0.5);

                X =(xa+30) +(xb-xa-60)*t; %giam kich thuoc chu x
                Y =(yb-30) +(ya-yb+60)*t; 

                l1= Z+l4;

                c2= ((X)^2 +(Y)^2 -l2^2 - l3^2)/(2*l2*l3);
                s2 = sqrt(abs(1-c2^2));
                t2= atan2(s2,c2);

                c1= (Y*(l2 +l3*c2 )+ -X*l3*s2)/((l2+l3*c2)^2 +(l3*s2)^2);
                s1 = (-X*(l2+l3*c2)- Y*l3*s2)/((l2+l3*c2)^2 +(l3*s2)^2);
                t1= atan2(s1,c1);

                Px= -l2*sin(t1)-l3*sin(t1+t2);
                Py=  l2*cos(t1)+l3*cos(t1+t2);    
                Pz= l1-l4;



                axis([0  300  0  300])
                axis square
                axis on    

                plot(Px,Py,'--.'); pause(0.01);
                xlabel('Truc x')
                ylabel('Truc y')
                grid on
                hold on
            end
        
            
            
            
            
            
        else
            %DAU 0
            for t=0:0.1:2*pi
                X0 = (L/n)*(i-0.5);
                Y0 = (L/n)*(j-0.5);

                X = X0+R*cos(t);
                Y = Y0+R*sin(t);

                l1= Z+l4;
                c2= ((X)^2 +(Y)^2 -l2^2 - l3^2)/(2*l2*l3);
                s2 = sqrt(abs(1-c2^2));
                t2= atan2(s2,c2);

                c1= (Y*(l2 +l3*c2 )+ -X*l3*s2)/((l2+l3*c2)^2 +(l3*s2)^2);
                s1 = (-X*(l2+l3*c2)- Y*l3*s2)/((l2+l3*c2)^2 +(l3*s2)^2);
                t1= atan2(s1,c1);

                Px= -l2*sin(t1)-l3*sin(t1+t2);
                Py=  l2*cos(t1)+l3*cos(t1+t2);    
                Pz= l1-l4;


                axis([0  300  0  300])
                axis square
                axis on
                
                plot(Px,Py,'--.'); pause(0.01);
                xlabel('Truc x')
                ylabel('Truc y')
                grid on
                hold on
            end
        end 
   end 
end
            
