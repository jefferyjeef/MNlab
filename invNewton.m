function [X,it,info]=invNewton(A)
info = 1;
max_it = 100;
[m, n] = size(A);
EPS = 1e-10;
X = zeros(n);
I = eye(n);
if m~=n || abs(det(A)<EPS)
    X=I;
    info = 0;
    it = 0;
    return;
end

al = 1/(norm(A)^2);
A1 = al * transpose(A);
A2 = zeros(n);
iter = 0;

for i=1:max_it
    if i==max_it
        info = 0;
        it = i;
        return;
    end
    if norm(A2-A1)<EPS
        info = 1;
        it = 1;
        return;
    end
    A2 = A1+A1*(I-A*A1);
    A1 = A2;
    iter = iter+1;
end
X=A2;
it=iter;

end