function [real_distance,distanceMean,distanceDeviation,distanceMedian] = samples_study(dir_out,filename_output,samples)
% Calculating statisctical moments
% Distance parameters
distances=samples(:,3);
vNormal=fitdist(distances,'Normal');
normalCI=paramci(vNormal);
distanceCI=normalCI(:,1);
distanceMean=mean(distances);
distanceMedian=median(distances);
distanceDeviation=std(distances);
real_distance=mean(samples(:,2));

% Deviation parameters
deviations=samples(:,4);
deviationMean=mean(deviations);
deviationMedian=median(deviations);
deviationDeviation=std(deviations);
deviationCI=normalCI(:,2);

% Error parameters
error=samples(:,2)-samples(:,3);
[MAE, RMSE]=error_study(error,dir_out);


% Plotting desired graphs & Saving results & figures
% Distance histogram
figure(4);
dist_histogram=histogram(distances,20);
title("Distance histogram [N=2000]");
ylabel('N� of samples');
xlabel("Distance (m)");
saveas(gcf,dir_out+"distance_histogram.png");
savefig(dir_out+'distance_histogram.fig');

% Deviation histogram
figure(5);
dev_histogram=histogram(deviations,20);
title("Deviation histogram [N=2000]");
ylabel('N� of samples');
xlabel("Distance (m)");
saveas(gcf,dir_out+'deviation_histogram.png');
savefig(dir_out+'deviation_histogram.fig');

% Distance PDF estimation
figure(6);
ksdensity(distances);
title("Distance PDF estimation");
xlabel("Distance (m)");
saveas(gcf,dir_out+'distance_pdf_estimation.png');
savefig(dir_out+'distance_pdf_estimation.fig');

% Deviation PDF estimation
figure(7);
ksdensity(deviations);
title("Deviation PDF estimation");
xlabel("Distance (m)");
saveas(gcf,dir_out+'deviation_pdf_estimation.png');
savefig(dir_out+'deviation_pdf_estimation.fig');

% Saving information
path_out=dir_out+filename_output;
fileID=fopen(path_out,'w');
fprintf(fileID,"%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f",real_distance,distanceMean,distanceCI(1),distanceCI(2),distanceMedian,distanceDeviation,deviationCI(1),deviationCI(2),prctiles(1),prctiles(2),prctiles(3),prctiles(4),prctiles(5),prctiles(6),prctiles(7));
fclose(fileID);
end
