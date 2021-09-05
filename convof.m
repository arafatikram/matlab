%convolution function
function [Y,N]=convof(x,n,h,m)
start=min(min(n),min(m));
N=start:(start+length(n)+length(m)-2);
for i=1:length(m)
    YY(:,i)=x*h(i);
end
Y=zeros(1,length(N));
for NN=1:length(N)
    for i=1:NN
        j=NN-i+1;
        if(i<=length(n) && j<=length(m))   
            Y(NN)=Y(NN)+YY(i,j);
        end
    end
end
fprintf('Programmer: ET173017 \n')