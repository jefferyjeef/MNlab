clc
clear
format("compact")

N=50;

while 1
    n = input('Podaj wymiar macierzy (1<=n<=50):')
    if n>=1 && n<=N
        break;
    end
end

a=5;
b=10;
rng("shuffle")
A =triu(a+(b-a)*rand(n));

[X,it,info]=invNewton(A);

if info==0
    disp('Macierz odwrotna nie istnieje!');
    return;
end

I=A*X;
ERR=abs(I-eye(n));

if n<=10
    disp('I=');disp(I);
    disp('X=');disp(X);
    disp('funkcja inv: ');disp(inv(A));
    disp('COND=');disp(cond(A));
end

imagesc(ERR);


