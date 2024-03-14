function [xp,yp] = dane(a,b,m)
    rng("shuffle");
    
    xp=1:m;
    yp = randi([a,b],1,m);

end