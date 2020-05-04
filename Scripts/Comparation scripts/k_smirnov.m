% Load sample files
path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Escenarios\Linksys\5G\5.1G\Interior Pasillo\Orientacion Vertical\20m\10-03-2020 180911-samples.txt";
path2="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Vertical\20m\11-03-2020 161425-samples.txt";
filename='Kolmogorov-Smirnov.txt';
dir_out="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Comparaciones\Linksys 5,1 vs Linksys 5,5\Orientación Vertical\20m\";
path_out=dir_out+filename;

samples=load(path);
samples2=load(path2);

% Evaluate & take results
distances=samples(:,3);
distances2=samples2(:,3);

[h,p,ks2stat] = kstest2(distances,distances2);

% Create the output file
fileID=fopen(path_out,'w');
fprintf(fileID,"%d,%f,%f",h,ks2stat,p);
fclose(fileID);

