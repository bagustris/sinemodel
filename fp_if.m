close all 
clear all 
clc 

pkg load signal

% read the wav file
%r=11025; 
%[d]=yy12; 
[d,r]=audioread('clar.wav'); 
[I,S]=ifgram(d,256,256,128,r); 
[R,M]=extractrax(abs(S)); 
a=size(R); 
F=colinterpvals(R,I); 
P=-colinterpvals(R,unwrap(angle(S))); 
size(F);
tt=[1:a(2)]*128/r;          % deault spectogram step is NFFT/2 i.e 128


size(tt);
specgram(d,256,r); 
hold on; 
figure; 
plot (tt,F','r');

% hold figure, don't close it
pause