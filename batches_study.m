function [mean_att_samples,mean_succ_samples,succ_ratio,path_out] = batches_study(dir_out,filename_output,batches)
% Important information gathering & calculating
%Success Ratio Calculation
successful_samples=batches(:,3);
attempted_samples=batches(:,4);

% Output Information - Attempted samples
mean_att_samples=mean(attempted_samples);
dev_att_samples=std(attempted_samples);

% Output Information - Successful samples
mean_succ_samples=mean(successful_samples);
dev_succ_samples=std(successful_samples);

% Output Information - Success ratio (%)
succ_ratio=mean_succ_samples/mean_att_samples;

% CI calculating (Not working because we are making just 1 batch per calculation, 
% so its impossible to fit the data to a Normal variable)
%vNormalSucc=fitdist(successful_samples,'Normal');
%normalSuccCI=paramci(vNormalSucc);
%SuccCI=normalSuccCI(:,1);
%vNormalAtt=fitdist(attempted_samples,'Normal');
%normalAttCI=paramci(vNormalAtt);
%AttCI=normalAttCI(:,1);

% Saving figures 
histogram(attempted_samples - successful_samples,12);
title("Failed samples histogram");
ylabel('Nº of failed samples')
xlabel("Attempted - Successful samples");
saveas(gcf,dir_out+'failed_samples_histogram.png');
savefig(gcf,dir_out+'failed_samples_histogram.fig');

% Saving Information gathered
path_out=dir_out+filename_output;
fileID=fopen(path_out,'w');
fprintf(fileID,"%f,%f,%f,%f,%f",mean_att_samples,dev_att_samples,mean_succ_samples,dev_succ_samples,succ_ratio);
fclose(fileID);
end

