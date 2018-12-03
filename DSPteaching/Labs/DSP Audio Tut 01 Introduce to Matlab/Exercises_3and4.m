% Week 4; Tut 1 Exercises 3) and 4)

% Note: please select the cell you want to run and use ctrl+enter to run it

%% ---------------------------------------------------------------
% 3)  Modify the demo code in gensin.m to plot sine wave with X,Y labels
%     and give the figure a meaningful title.

clear;clc;                  % clear workspace and comand window

% Generate signal
Amp=0.9;                    % Initial the amplitude of signal
f=441;                      % Initial the frequency of signal
fs = 44100;                 % Initial the sampling frequency
ts= 1/fs;                   % Calculate the sampling rate
t = 0:1/fs:(0.1-ts);        % Initial array t (x label)
sig = Amp*sin(2*pi*f*t);    % Calculate the signal (amplitude of each sample point)
% Plot
figure (1);                 % Create a figure called figure 1
plot(t,sig,'LineWidth',2);  % Plot the signal
set(gca,'fontsize',10,'fontweight','b');        % Set font of numbers
xlabel('Time in second','fontsize',10,'fontweight','b');    % X label
ylabel('Amplitude','fontsize',10,'fontweight','b');         % Y label
title('Sine wave signal','fontsize',10,'fontweight','b');   % Title
% Generate audio file
% wavwrite(sig,fs,'sine1.wav');     % MATLAB 2015b has deleted this cmd.
% audiowrite('sine1.wav',sig,fs);     % MATLAB 2015b


%% ---------------------------------------------------------------
% 4)  Create the following periodic signals with sampling frequency 10 KHz
%     and plot 500 points of each of them. Signal 1 with 20Hz; signal 2
%     with 200Hz and Signal 3 with 1000Hz. Signals shall last 1 second and
%     with amplitude 0.5. Using subplot() command to create nice plots in
%     one diagram.

clear;clc;          % clear workspace and comand window

% Initial global variables:
Fs = 10e3;          % Initial the sampling frequency
Amp = 0.5;          % Initial the amplitude of signal
dur = 1;            % Initial the duration of signal
ts = 1/Fs;        % Calculate the sampling rate
t = 0:ts:(dur-ts);  % Initial the array t (x label)

points =[1: 500];       % Initial how many points we want to plot.

f1 = 20;            % Signal 1's frequency
f2 = 200;           % Signal 2's frequency
f3 = 1000;          % Signal 3's frequency

% Generate signals
sig1 = Amp*sin(2*pi*f1*t);
sig2 = Amp*sin(2*pi*f2*t);
sig3 = Amp*sin(2*pi*f3*t);

figure(2);          % Figure 2 for subplot

subplot(4,1,1);
plot(t(points),sig1(points));
xlabel('Sample points');
ylabel('Amplitude','fontsize',10,'fontweight','b');
title('Signal 1','fontsize',10,'fontweight','b');

subplot(4,1,2);
plot(t(points),sig2(points));
xlabel('Sample points');
ylabel('Amplitude','fontsize',10,'fontweight','b');
title('Signal 2','fontsize',10,'fontweight','b');

subplot(4,1,3);
plot(t(points),sig3(points));
xlabel('Sample points');
ylabel('Amplitude','fontsize',10,'fontweight','b');
title('Signal 3','fontsize',10,'fontweight','b');

subplot(4,1,4);
plot(t(points),sig1(points),':ro',t(points),sig2(points),'--b*',t(points),sig3(points),'-gs');
set(gca,'fontsize',10,'fontweight','b');
xlabel('Time in second')
ylabel('Amplitude','fontsize',10,'fontweight','b');
title('{\color{red}Signal 1, \color{blue}Signal 2 \color{black}and \color{green}Signal 3}','fontsize',10,'fontweight','b');




