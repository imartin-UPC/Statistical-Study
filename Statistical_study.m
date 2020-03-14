%% Samples Statistical Study
% Loading the file
path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Batería de prueba\Google\1m\03-03-2020 143830-samples.txt";
samples=csvread(path);

% Calling samples_study function
dir_out="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Batería de prueba\Google\1m\";
[real_distance,distanceMean,distanceDeviation,distanceMedian] = samples_study(dir_out,"samples_output.txt",samples);

%% Batches Statistical Study
% Loading the file
path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Batería de prueba\Google\10m\03-03-2020 153720-batches.txt";
batches=load(path);

% Calling batches_study function
dir_out="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Batería de prueba\Google\10m\";
[mean_att_samples,mean_succ_samples,succ_ratio,path_out]=batches_study(dir_out,"batches_output.txt",batches);
