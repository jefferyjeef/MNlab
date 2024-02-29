function [X,info]=invU(A)
    
info = 1;
[m, n] = size(A);
EPS = 1e-10;
if m~=n || any(abs(diag(A))<EPS)
    X=A;
    info = 0;
    return;
end
X=diag(1./diag(A));
for i = 1:n
    for j=i+1:n
        X(i,j)=-X(i,i:j-1)*A(i:j-1,j)/A(j,j);
    end
end


%for i=1:n
%    X(i,i)=1/A(i,i);
%    for j=i+1:n
%        S=0;
%        for k=i:j-1
%            S=S+X(i,k)*A(k,j);
%        end
%        X(i,j)=-S/A(j,j);
%    end    
%end

end