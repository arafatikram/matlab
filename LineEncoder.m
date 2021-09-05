function [x T] = LineEncoder(type,inbits,Tb,A)
if nargin<4, A = 1;end
if nargin<3, Tb = 1e-9;end
if nargin<2, inbits = [1 0 1 0];end
if nargin<1, type = 'uninrz';end
Rb = 1/Tb; 
Fs = 4*Rb;
N = length(inbits); 
tTb = linspace(0,Tb);
x = [];
switch lower(type)
    case 'uninrz'
        for k = 1:N
            x = [x A*inbits(k)*ones(1,length(tTb))];
        end
    case 'unirz'
        for k = 1:N
            x = [x A*inbits(k)*ones(1,length(tTb)/2) 0*inbits(k)*ones(1,length(tTb)/2)];
        end
    case 'polrz'
        for k = 1:N
            c = ones(1,length(tTb)/2);
            b = zeros(1,length(tTb)/2);
            p = [c b];
            x = [x ((-1)^(inbits(k)+1))*(A/2)*p];
        end
    case 'polnrz'
        for k = 1:N
            x = [x ((-1)^(inbits(k) + 1))*A/2*ones(1,length(tTb))];
        end
 case 'manchester'
       for k = 1:N
           c = ones(1,length(tTb)/2);
           b = -1*ones(1,length(tTb)/2);
           p = [c b];
           x = [x ((-1)^(inbits(k)+1))*A/2*p];
        end
 case 'ami'
end
T = linspace(0,N*Tb,length(x));