 function [] = ResonancePlots(~)
 V = input('');
 r = input('');
 l = input('');
 c = input('');
 Zin_num = [ l*c r*c 1];
 Zin_den = [0 c 0];
 Zin = tf(Zin_num,Zin_den);
 I = V/Zin;
 Zc =tf([0 1],[c 0]);
 Zp = tf([l r],[0 1]);
 Vc = V*Zc/(Zc+Zp);
 Zl = tf([l 0],[0 1]);
 Zp1 = tf([r*c 1],[c 0]);
 Vl = V*Zl/(Zl+Zp1);
 bode(I,Zin,Vc,Vl);
 grid on;
 title('Resonance in Series RLC');
 legend('I','Z','Vc','Vl');
end

