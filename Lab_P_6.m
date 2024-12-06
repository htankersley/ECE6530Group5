clc;
clear;
close all;

% Lab P-6: Synthesis of Sinusoidal Signals - A Music Illusion

function shepardscale = makescale(fs)
    C0 = key2note(1, 40-48, 2, fs);
    C1 = key2note(1, 40-36, 2, fs);
    C2 = key2note(1, 40-24, 2, fs);
    C3 = key2note(1, 40-12, 2, fs);
    C4 = key2note(1, 40, 2, fs);
    C5 = key2note(1, 40+12, 2, fs);
    C6 = key2note(1, 40+24, 2, fs);
    C7 = key2note(1, 40+36, 2, fs);
    C8 = key2note(1, 40+48, 2, fs);

    D0 = key2note(1, 42-48, 2, fs);
    D1 = key2note(1, 42-36, 2, fs);
    D2 = key2note(1, 42-24, 2, fs);
    D3 = key2note(1, 42-12, 2, fs);
    D4 = key2note(1, 42, 2, fs);
    D5 = key2note(1, 42+12, 2, fs);
    D6 = key2note(1, 42+24, 2, fs);
    D7 = key2note(1, 42+36, 2, fs);
    D8 = key2note(1, 42+48, 2, fs);

    E0 = key2note(1, 44-48, 2, fs);
    E1 = key2note(1, 44-36, 2, fs);
    E2 = key2note(1, 44-24, 2, fs);
    E3 = key2note(1, 44-12, 2, fs);
    E4 = key2note(1, 44, 2, fs);
    E5 = key2note(1, 44+12, 2, fs);
    E6 = key2note(1, 44+24, 2, fs);
    E7 = key2note(1, 44+36, 2, fs);
    E8 = key2note(1, 44+48, 2, fs);

    F0 = key2note(1, 45-48, 2, fs);
    F1 = key2note(1, 45-36, 2, fs);
    F2 = key2note(1, 45-24, 2, fs);
    F3 = key2note(1, 45-12, 2, fs);
    F4 = key2note(1, 45, 2, fs);
    F5 = key2note(1, 45+12, 2, fs);
    F6 = key2note(1, 45+24, 2, fs);
    F7 = key2note(1, 45+36, 2, fs);
    F8 = key2note(1, 45+48, 2, fs);

    G0 = key2note(1, 47-48, 2, fs);
    G1 = key2note(1, 47-36, 2, fs);
    G2 = key2note(1, 47-24, 2, fs);
    G3 = key2note(1, 47-12, 2, fs);
    G4 = key2note(1, 47, 2, fs);
    G5 = key2note(1, 47+12, 2, fs);
    G6 = key2note(1, 47+24, 2, fs);
    G7 = key2note(1, 47+36, 2, fs);
    G8 = key2note(1, 47+48, 2, fs);

    A0 = key2note(1, 49-48, 2, fs);
    A1 = key2note(1, 49-36, 2, fs);
    A2 = key2note(1, 49-24, 2, fs);
    A3 = key2note(1, 49-12, 2, fs);
    A4 = key2note(1, 49, 2, fs);
    A5 = key2note(1, 49+12, 2, fs);
    A6 = key2note(1, 49+24, 2, fs);
    A7 = key2note(1, 49+36, 2, fs);
    A8 = key2note(1, 49+48, 2, fs);

    B0 = key2note(1, 51-48, 2, fs);
    B1 = key2note(1, 51-36, 2, fs);
    B2 = key2note(1, 51-24, 2, fs);
    B3 = key2note(1, 51-12, 2, fs);
    B4 = key2note(1, 51, 2, fs);
    B5 = key2note(1, 51+12, 2, fs);
    B6 = key2note(1, 51+24, 2, fs);
    B7 = key2note(1, 51+36, 2, fs);
    B8 = key2note(1, 51+48, 2, fs);
end