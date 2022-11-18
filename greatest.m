clc;
load Data.mat
R=Greatest;
for i = 1:153
    if soc (i)>0.6 and and soc<0.8
        R=R(i);
        R = Greatest
    end
end 