clc
clear all
close all
load('100m.mat');
y=val(1:5000);
ecg=y;
fs=200;
n=length(ecg);
compecg=zeros(1,n/2); %compressed ecg vector
compecg(1)=ecg(1); %save first sample
p=0; %index for compressed ecg
for k=1:2:n-2                                               % take first three samples and store acc.
s1=sign(ecg(k+1)-ecg(k));
s2=sign(ecg(k+2)-ecg(k+1));
if(s2-s1)>0
compecg(p+1)=ecg(k+1);                                      
else
compecg(p+1)=ecg(k+2);
end
p=p+1;
end
compecg=compecg'; %convert to col vector
rececg=interp(compecg,2); %reconstruct ecg signal
subplot(3,1,1); plot(ecg); legend('Original ECG');
xlabel('Time in s'); ylabel('Amplitude');
subplot(3,1,2); plot(compecg); legend('Compressed signal');
xlabel('Time in s'); ylabel('Amplitude');
subplot(3,1,3); plot(rececg); legend('Reconstructed signal');
xlabel('Time in s'); ylabel('Amplitude');
cr=length(compecg)/length(ecg);
n1=length(compecg);
n2=length(rececg);
disp('length of ECG is:'); disp(n); % 388
disp('length of compressed ECG is:'); disp(n1); 
disp('length of reconstructed ECG is:'); disp(n2);
