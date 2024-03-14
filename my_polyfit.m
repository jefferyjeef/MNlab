function y = my_polyfit(xp,yp,n)
    m = size(yp);
    A = zeroes(m,n);
    for i = 1:m
        for j = 1:n+1
            A(i,j)=xp(i).^(n-j+1);
        end
    end
    y = inv(A)*yp;
end