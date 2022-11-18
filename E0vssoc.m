clc;
E0=(0.0026.*temp)+(7.9387.*0.0001.*temp.*SOC)+(0.0016.*temp.*SOC.*SOC)+2.5625;
plot (SOC,E0)
title('Open Circuit Voltage During Charging')
xlabel('SOC')
ylabel('E0')