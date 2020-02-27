%% Loading the file

path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\25-02-2020 171914-samples.txt";
samples=csvread(path);

%% Calculating statisctical moments & Saving results & figures

%Deviation parameters
deviations=samples(:,4);
deviationMean=mean(deviations);
deviationDeviation=std(deviations);

%Distance parameters
distances=samples(:,3);
distanceMean=mean(distances);
distanceDeviation=std(distances);

%% Plotting desired graphs

%Distance histogram
figure(1);
dist_histogram=histogram(distances,12);
title("Distance histogram");
xlabel("N=2000");
saveas(gcf,"distance_histogram.png");

%Deviation histogram
figure(2);
dev_histogram=histogram(deviations,12);
title("Deviation histogram");
xlabel("N=2000");
saveas(gcf,'deviation_histogram.png');

%Distance PDF estimation
figure(3);
dist_pdf_estimation=ksdensity(distances);
plot(dist_pdf_estimation);
xlabel("Distance PDF estimation");
saveas(gcf,'distance_pdf_estimation.png');

%Deviation PDF estimation
figure(4);
dev_pdf_estimation=ksdensity(deviations);
plot(dev_pdf_estimation);
xlabel("Deviation PDF estimation");
saveas(gcf,'deviation_pdf_estimation.png');

path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\salida_samples_prueba.txt";
fileID=fopen(path,'w');

real_distance=mean(samples(:,2));
fprintf(fileID,"%f,%f,%f",real_distance,distanceMean,distanceDeviation);

fclose(fileID);
