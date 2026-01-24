% clear all,close all,clc

S.Start_Point = 40;            
S.Maximum_Diffusion = 3;
S.Maximum_Generation  = 2000;    
S.Walk = 1;
S.Function_Name = 'ObjFunction';
S.Ndim = 4;
% S.Lband = ones(1, S.Ndim)*(0);
% S.Uband = ones(1, S.Ndim)*(50);
S.Lband = [0.1 0.1 0.1 0.1];
S.Uband = [10 10 100 100];
S.plot = 1;
S.ShowResult = 1; 

%Start Stochastic Fractal Search*******************************************
%compute the time of finding solution
    StartOptimiser = tic;           
    [pbest, fbest, F] = Stochastic_Fractal_Search(S);
    EndOptimiser = toc(StartOptimiser);
%**************************************************************************

%Print Final Results*******************************************************
    diary('output.txt');   % Start recording output to file
    fprintf('The time of finding solution is: %f\n', EndOptimiser);

    display('The best solution for the current variant is:');
    pbest

    display('The value of the best fitness function for current variant is:');
    fbest
    diary off;             % Stop recording output

%**************************************************************************
