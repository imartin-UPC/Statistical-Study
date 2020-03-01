%% Samples Statistical Study
% Loading the file
path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\prueba_input\25-02-2020 171914-samples.txt";
samples=csvread(path);

% Calling batches_study function
dir_out="C:\Users\ffran\Dropbox\TFG\Statistical-Study\prueba_output_samples\";
[real_distance,distanceMean,distanceDeviation,distanceMedian] = samples_study(dir_out,"salida_samples_prueba.txt",samples);

%% Batches Statistical Study
% Loading the file
path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\prueba_input\25-02-2020 193225-batches.txt";
batches=readtable(path);

% Calling batches_study function
dir_out="C:\Users\ffran\Dropbox\TFG\Statistical-Study\prueba_output_batches\";
[mean_att_samples,mean_succ_samples,BSSID,succ_ratio,path_out]=batches_study(dir_out,"salida_batches_prueba.txt",batches);
