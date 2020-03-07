%% Samples Statistical Study
% Loading the file
path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Batería de prueba\Linksys\5G\6e\20m\04-03-2020 163615-samples.txt";

% Calling samples_study function
dir_out="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Batería de prueba\Linksys\5G\6e\20m\"
[real_distance,distanceMean,distanceDeviation,distanceMedian] = samples_study(dir_out,"samples_output.txt",samples);

%% Batches Statistical Study
% Loading the file
path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Batería de prueba\Google\10m\03-03-2020 153720-batches.txt";
batches=readtable(path);
fieldnames(batches)

% Calling batches_study function
dir_out="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Batería de prueba\Google\10m\";
[mean_att_samples,mean_succ_samples,BSSID,succ_ratio,path_out]=batches_study(dir_out,"batches_output.txt",batches);
