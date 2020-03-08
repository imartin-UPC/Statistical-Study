function [MAE, RMSE, prctiles]=error_study(error,dir_out)
% Calculating important error parameters
MAE=mean(abs(error));
RMSE=sqrt(1/2000*sum(error.^2))

% Error PDF, CDF & Histogram calculation
figure(1);
cdfplot(error);
title("Error CDF Estimation");
saveas(gcf,dir_out+'error_cdf_estimation.png');
savefig(dir_out+'error_cdf_estimation.fig');

figure(2);
ksdensity(error);
title("Error PDF Estimation");
xlabel("Distance (m)");
saveas(gcf,dir_out+'error_pdf_estimation.png');
savefig(dir_out+'error_cdf_estimation.fig');

figure(3);
histogram_error=histogram(error,20);
title("Error histogram [N=2000]");
xlabel("Distance (m)");
saveas(gcf,dir_out+'error_histogram.png');
savefig(dir_out+'error_histogram.fig');

% Percentile calculation
prctiles=zeros(7);
prctiles(1)=prctile(abs(error),5);
prctiles(2)=prctile(abs(error),25);
prctiles(3)=prctile(abs(error),33);
prctiles(4)=prctile(abs(error),66);
prctiles(5)=prctile(abs(error),75);
prctiles(6)=prctile(abs(error),90);
prctiles(7)=prctile(abs(error),95);

filename_output='error_output.txt';
path_out=dir_out+filename_output;
fileID=fopen(path_out,'w');
fprintf(fileID,"%f,%f",MAE,RMSE);
fclose(fileID);
end
