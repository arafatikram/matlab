function [xe,ne,xo,no] = even_odd_signal(x,n)
[X,N]=fold_signal(x,n);
[xe,ne]=add_signal(x,n,X,N);
xe=0.5*xe;
[xo,no]=sub_signal(x,n,X,N);
xo=0.5*xo;
fprintf('Programmer: ET173001\n')
end