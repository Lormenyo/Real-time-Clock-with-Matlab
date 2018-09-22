
% Draw Circle with Radius of 4 and center(0,0).
center(1) = 0;
center(2) = 0;
r = 4;
subplot(1, 2, 1)
[x, y] = getCircle([center(1), center(2)], r);
plot(y, x, 'k', center(1), center(2),'k *','LineWidth', 6)


hold on 

current_time = fix(clock);
    
year = current_time(1);
month = current_time(2);
day = current_time(3);
hour = current_time(4);

if hour > 12
    hour = hour - 12;
end


min = current_time(5);
sec = current_time(6);

    
hold on
sx = 3.5*cos(sec*pi/30);
sy = 3.5*sin(sec*pi/30);
sech = plot([0 sy], [0 sx], 'r', 'LineWidth', 2);

mx = 3.3*cos(min*pi/30);
my = 3.3*sin(min*pi/30); 
hold on
minh = plot([0 my], [0 mx], 'k', 'LineWidth', 2);

hx = 2.5*cos(hour*pi/6 + min*pi/360);
hy = 2.5*sin(hour*pi/6 + min*pi/360 ) ;
hold on
hourh = plot([0 hy], [0 hx], 'k', 'LineWidth', 5);

% Plotting the numbers on the clock.
ang =  pi/6: pi/6 : 2*pi;  
t_num = 1;
hold on
for text_angle = ang
    a = 3.5 * cos(text_angle);
    b = 3.5 * sin(text_angle)-0.25;
    text(b, a, num2str(t_num), 'FontWeight', 'Bold', 'FontSize', 14)
    t_num = t_num + 1;
end


% Red dots Design along the Circumference.
radi =  pi/30: pi/30 : 2*pi;  
hold on
for angle = radi
    p = 3.5 * cos(angle);
    s = 3.5 * sin(angle)-0.08;
    if mod(angle, pi/6) == 0
         r = 3.7 * cos(angle);
         q = 3.7 * sin(angle)-0.1;
        plot(q, r, 'r .')
    else
        plot(s, p, 'r .')
    end
end

% Star Design at the center
nPoints = 7;
th = linspace(-2*pi, 2*pi, 2*nPoints+1);  %// extra point to close the curve
r = 0.7;
x = r*cos(th);
y = r*sin(th);
scatter( x, y, 'r o' );
hold on;
star = plot( x(1:2:end), y(1:2:end), 'k-','LineWidth',2 );
fill(x(1:2:end),y(1:2:end), 'k')

    
    switch month
        case 1 
            month = 'January';
        case 2 
            month = 'February';
        case 3 
            month = 'March';
        case 4 
            month = 'April';
        case 5 
            month = 'May';
        case 6 
            month = 'June';
        case 7 
            month = 'July';
        case 8 
            month = 'August';
        case 9 
            month = 'September';
        case 10 
            month = 'October';
        case 11 
            month = 'November';
        case 12 
            month = 'December';
    end
axis equal
axis tight
axis off

    
subplot(1, 2 , 2)
cal = calendar;
cell_days =  {'S','M' ,'T', 'W' ,'T' ,'F' ,'S'};
hold on
for c = 1:7
        text(4.5,-c+1.8,cell_days(1,c),...
            'BackgroundColor','k', 'color', 'w')
end

% Calender Boundaries
hold on
plot([4.2,4.2, 4.2],linspace(1.5,-6,3),'k-','LineWidth', 2) %left
hold on
plot(linspace(4.2,11.4,3),[1.5,1.5, 1.5],'k-','LineWidth', 2) %Top
hold on
plot([11.4,11.4, 11.4],linspace(1.5,-6,3),'k-','LineWidth', 2) %Right
hold on
plot(linspace(4.2,11.4,3), [-6, -6, -6],'k-','LineWidth', 2) %Bottom


for c = 1:7
    for r = 1:6
        hold on
        text(r+4.5,-c+1.8,num2str(cal(r,c)),'BackgroundColor','b','Color','w')
        if cal(r,c) == day
            text(r+4.5,-c+1.8,num2str(cal(r,c)),'BackgroundColor','r')
        end
        text(7,2,[month,' ', num2str(year)],...
            'BackgroundColor','k', 'FontSize', 18, 'color', 'w')
    end
end
    


axis equal
axis tight
axis off


% Sound effects
[tick,Fs] = audioread('shtick.wav');


% Update the time
for i = 1:100000
    pause(1)
    rotate(sech, [0,0,1], -6,[0,0,0])
    rotate(star, [0,0,1], -6,[0,0,0])
    sound(tick,Fs)                          % Second hand ticking sound
    sec = sec + 1;


    
    if mod(sec, 60) == 0
        rotate(minh, [0,0,1], -6,[0,0,0])
        rotate(hourh, [0,0,1], -0.5,[0,0,0])
    end

    
    text(-2.5,-0.8,[ month,' ', num2str(day),',', num2str(year)],...
        'FontSize', 14, 'BackgroundColor', 'k', 'color', 'w', 'FontAngle',...
        'italic')
    

    
end
        
   


    



