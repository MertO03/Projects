clc; clear all; close all;

R1 = 10 * power(10,3);
C1 = 1 * power(10,-9);
C2 = 1 * power(10,-9);



R2 = 5000:1000:20000;
frequencies = [0 0 0 0 15545.4 14602.6 13760.6 13006 12332.3  11745.5 11210 10750.3 10313.1 9901.38 9483.08 9186.99];

f_cal = zeros(size(R2));
for i = 1:length(R2)
    %f_cal(i) = 1 / (2*pi*sqrt(R1*R2*power(10,3)*C1*C2));
    f_cal(i) = 1 / (2 * pi * sqrt(R1 * R2(i) * C1 * C2));
end

figure;
plot(R2, frequencies, 'r');hold on;
plot(R2, f_cal, 'b--'); hold off;
xlabel('R2'); ylabel('Frequency');
title('R2 versus Frequency');
grid on;
legend('Simulated', 'calculated');

whos R2 frequencies