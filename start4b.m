clc
clear
format("default")

[xp,yp]=dane(-5,5,8);

a=polyfit(xp,yp,7)
a2 = my_polyfit(xp,yp,8)