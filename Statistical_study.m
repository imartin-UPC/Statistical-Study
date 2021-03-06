%% Samples Statistical Study
% Loading the file
path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Vertical\23m\11-03-2020 162330-samples.txt";
samples=csvread(path);

% Calling samples_study function
dir_out="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Vertical\23m\";
[real_distance,distanceMean,distanceDeviation,distanceMedian] = samples_study(dir_out,"samples_output.txt",samples);

%% Batches Statistical Study
% Loading the file
path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Escenarios\Google\Interior Pasillo\Orientacion Horizontal\1m\09-03-2020 164441-batches.txt";
batches=load(path);

% Calling batches_study function
dir_out="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Google\Interior Pasillo\Orientacion Horizontal\1m\";
[mean_att_samples,mean_succ_samples,succ_ratio,path_out]=batches_study(dir_out,"batches_output.txt",batches);
