function [Y,N] = fold_signal(x,n)
[row, col]=size(x);
if col==1
    Y=flipud(x);
else
    Y=fliplr(x);
end
[row, col]=size(n);
if col==1
    N=-flipud(n);
else
    N=-fliplr(n);
fprintf('Programmer: ET173001\n')
end