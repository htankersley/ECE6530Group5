function xx = key2note(X, keynum, dur, fs)
% KEY2NOTE Produce a sinusoidal waveform corresponding to a
% given piano key number
%
% usage: xx = key2note (X, keynum, dur)
%
% xx = the output sinusoidal waveform
% X = complex amplitude for the sinusoid, X = A*exp(j*phi).
% keynum = the piano keyboard number of the desired note
% dur = the duration (in seconds) of the output note
%
% Specified sample frequency fs
midi_to_frequency = 440 * 2.^(((0:127) - 48) / 12);
tt = 0:(1/fs):dur;
freq = midi_to_frequency(keynum);
xx = real(X.*exp(1j*2*pi*freq*tt));