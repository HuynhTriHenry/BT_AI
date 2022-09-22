syms l1 l2 l3 t t1 t2 c1 s1 c2 s2
l1 = 25; 
l2 = 25;
for t=-pi:0.1:pi
    X = 18*(sin(t)^3);
    Y = 13*cos(t) - 8*cos(2*t) - 4*cos(3*t) - cos(4*t);
    
    c2 = (X^2 + Y^2 - l1^2 - l2^2)/(2*l1*l2); %cos(t2) = (Px^2 + Py^2 - l1^2 - l2^2)/(2*l1*l2)
    s2 = sqrt(abs(1-c2^2)); %sin(t2) = sqrt(abs(1-cos(t2)^2)) 
    t2 = atan2(s2,c2);
    
    c1 = X*(l1+l2*c2) + Y*l2*s2;
    s1 = Y*(l1 + l2*c2) - X*l2*s2;
    t1 = atan2(s1,c1);
    
    Px = l1*cos(t1) + l2*cos(t1+t2);
    Py = l1*sin(t1) + l2*sin(t1+t2);
    
    %v? bi?u ??
    subplot(2,1,1);
    plot(t,t2*180/pi,'*');  
    pause(0.1);
    xlabel('t'); ylabel('rotation')
    hold on
    subplot(2,1,2);
    plot(Px,Py,'*');  pause(0.1);
    xlabel('x(cm)'); ylabel('y(cm)'); 
    pause(0.1);
    hold on
end