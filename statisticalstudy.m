%% Loading the file

path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Escenarios\Pruebas\25-02-2020 171914-samples.txt";
samples=csvread(path);

%% Calculating statisctical moments

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

%Deviation histogram
figure(2);
dev_histogram=histogram(deviations,12);
title("Deviation histogram");
xlabel("N=2000");

%Distance PDF estimation
figure(3);
dist_pdf_estimation=ksdensity(distances);
plot(dist_pdf_estimation);
xlabel("Distance PDF estimation");

%Deviation PDF estimation
figure(4);
dev_pdf_estimation=ksdensity(deviations);
plot(dev_pdf_estimation);
xlabel("Deviation PDF estimation");

%% Saving results & figures

path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Pruebas\salida_prueba.txt.txt";
fileID=fopen(path,'w');

real_distance=mean(samples(:,3));
fprintf(fileID,"%f,%f,%f",real_distance,distanceMean,distanceDeviation);

bar(dist_histogram);
saveas(gcf,'distance_histogram.png');
bar(dev_histogram);git add
saveas(gcf,'deviation_histogram.png');
bar(dist_pdf_estimation);
saveas(gcf,'dist_pdf_estimation.png');
bar(dev_pdf_estimation);
saveas(gcf,'dev_pdf_estimation.png');
