clc;
E0 =(0.0026.*temp)+(7.9387.*0.0001.*temp.*SOC)+(0.0016.*temp.*SOC.*SOC)+2.5625;
R=V-E0;
plot (SOC,R)
title('Internal Resistance During Charging')
xlabel('SOC')
ylabel('R')