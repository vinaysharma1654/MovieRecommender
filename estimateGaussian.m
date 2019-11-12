function [mu sigma2] = estimateGaussian(X)
[m, n] = size(X);
mu = zeros(n, 1);
sigma2 = zeros(n, 1);
mu=(sum(X)/m)';
l=zeros(1,n);
for i=1:m
    l=l+ (X(i,:)-mu').^2;
end
sigma2=(l/m)';
end
