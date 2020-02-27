%% Loading the file

path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\25-02-2020 193225-batches.txt";
batches=readtable(path);

%% Important information gathering & calculating

%Success Ratio Calculation
successful_samples_vector=batches(:,3);
attempted_samples_vector=batches(:,4);

mean_success_ratio=mean(successful_samples_vector.Var3/attempted_samples_vector.Var4);

%Getting the BSSID of the AP
BSSID=cell2mat(batches(:,1).Var1(1));

%% Saving Information

path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\salida_batches_prueba.txt";
fileID=fopen(path,'w');


attempted_samples=attempted_samples_vector.Var4;
successful_samples=successful_samples_vector.Var3;
fprintf(fileID,"%f,%f,%s,%f",mean(attempted_samples),mean(successful_samples),string(BSSID),mean_success_ratio);

fclose(fileID);


