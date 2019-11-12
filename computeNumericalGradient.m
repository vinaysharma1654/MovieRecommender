function numgrad = computeNumericalGradient(J, theta)            
numgrad = zeros(size(theta));
perturb = zeros(size(theta));
e = 1e-4;
for p = 1:numel(theta)
    perturb(p) = e;
    loss1 = J(theta - perturb);
    loss2 = J(theta + perturb);
    numgrad(p) = (loss2 - loss1) / (2*e);
    perturb(p) = 0;
end
end
