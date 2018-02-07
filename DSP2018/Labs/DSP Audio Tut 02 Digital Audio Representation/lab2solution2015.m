%% Reading Audio 
Filename = 'piano_middle_C.wav';
% [Sig, Fs, Bits, OPT]=wavread(Filename);
info=audioinfo(Filename);
[Sig, Fs]=audioread(Filename);
Duration = length(Sig)/Fs;
disp(Duration); %display duration
Ts = 1/Fs;
Time = 0:Ts:Duration-Ts;
figure(1);
plot(Time, Sig);
ylabel('Amplitude');
xlabel('Time Sec');
sound(Sig, Fs);

%% Q1 File size in kilobytes
Bits=info.BitsPerSample;
Fsize = Duration*Fs*Bits/8/1024; disp(Fsize) %in kB;
%% Q2 a) temp stores the 0.5 to 1 second audio from original file 
N1=0.5*Fs; N2 = 1*Fs;
temp=audioread(Filename,[N1, N2]); figure(2);plot(temp);
%% Q2 b)
temp2=Sig(N1:N2);figure(3);plot(temp2);

%% Q3 
Stereosig = [Sig Sig]; 
audiowrite('new.wav',Stereosig,Fs);

%% Q3 extended
fsig=flipud(Sig);
NewStereo = [Sig,fsig];
figure(4)
plot(NewStereo);
sound(NewStereo,Fs);
audiowrite('new2.wav',NewStereo,Fs);

%% new audio player
%load gong.mat;
% gong = audioplayer(NewStereo, Fs);
% play(gong);