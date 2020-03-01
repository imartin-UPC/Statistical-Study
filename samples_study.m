function [real_distance,distanceMean,distanceDeviation,distanceMedian] = samples_study(dir_out,filename_output,samples)
% Calculating statisctical moments
% Deviation parameters
deviations=samples(:,4);
deviationMean=mean(deviations);
deviationMedian=median(deviations);
deviationDeviation=std(deviations);

% Distance parameters
distances=samples(:,3);
distanceMean=mean(distances);
distanceMedian=median(distances);
distanceDeviation=std(distances);
real_distance=mean(samples(:,2));

% Plotting desired graphs & Saving results & figures
% Distance histogram
figure(1);
dist_histogram=histogram(distances,12);
title("Distance histogram");
xlabel("N=2000");
saveas(gcf,dir_out+"distance_histogram.png");

% Deviation histogram
figure(2);
dev_histogram=histogram(deviations,12);
title("Deviation histogram");
xlabel("N=2000");
saveas(gcf,dir_out+'deviation_histogram.png');

% Distance PDF estimation
figure(3);
dist_pdf_estimation=ksdensity(distances);
plot(dist_pdf_estimation);
xlabel("Distance PDF estimation");
saveas(gcf,dir_out+'distance_pdf_estimation.png');

% Deviation PDF estimation
figure(4);
dev_pdf_estimation=ksdensity(deviations);
plot(dev_pdf_estimation);
xlabel("Deviation PDF estimation");
saveas(gcf,dir_out+'deviation_pdf_estimation.png');

% Saving information
path_out=dir_out+filename_output;
fileID=fopen(path_out,'w');
fprintf(fileID,"%f,%f,%f,%f",real_distance,distanceMean,distanceDeviation,distanceMedian);
fclose(fileID);
end
