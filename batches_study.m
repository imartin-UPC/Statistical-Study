function [mean_att_samples,mean_succ_samples,BSSID,succ_ratio,path_out] = batches_study(dir_out,filename_output,batches)
% Important information gathering & calculating
%Success Ratio Calculation
successful_samples_vector=batches(:,3);
attempted_samples_vector=batches(:,4);
succ_ratio=mean(successful_samples_vector.Var3)/mean(attempted_samples_vector.Var4);

%Getting the BSSID of the AP
mac=cell2mat(batches(:,1).Var1(1));
BSSID=string(mac);

% Output Information - Attempted samples
attempted_samples=attempted_samples_vector.Var4;
mean_att_samples=mean(attempted_samples);
dev_att_samples=std(attempted_samples);

% Output Information - Successful samples
successful_samples=successful_samples_vector.Var3;
mean_succ_samples=mean(successful_samples);
dev_succ_samples=std(successful_samples);

% CI calculating
vNormalSucc=fitdist(successful_samples,'Normal');
normalSuccCI=paramci(vNormalSucc);
SuccCI=normalSuccCI(:,1);
vNormalAtt=fitdist(attempted_samples,'Normal');
normalAttCI=paramci(vNormalAtt);
AttCI=normalAttCI(:,1);

% Saving figures 
histogram(attempted_samples - successful_samples,12);
title("Failed samples histogram");
xlabel("Attempted - Successful samples");
saveas(gcf,dir_out+'failed_samples_histogram.png');

% Saving Information gathered
path_out=dir_out+filename_output;
fileID=fopen(path_out,'w');
fprintf(fileID,"%f,%f,%f,%f,%f,%f,%f,%f,%s,%f",mean_att_samples,AttCI(1),AttCI(2),dev_att_samples,mean_succ_samples,SuccCI(1),SuccCI(2),dev_succ_samples,BSSID,succ_ratio);
fclose(fileID);
end

