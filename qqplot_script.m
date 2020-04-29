% Load sample file
path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Vertical\23m\11-03-2020 162330-samples.txt";
dir_outModel="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Vertical\23m\";
samples=csvread(path);
distances=samples(:,3);

% Load samples_output file
path2="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Vertical\23m\samples_output.txt";
samples_output=load(path2);

% Load samples file 2
%path3="";
%samples2=load(path3);
%distances2=samples2(:,3);

% QQ-Plot of the measured distance VS analytic model

prctiles = prctile(distances, 0:1:100);
mu=samples_output(:,2);
sigma=samples_output(:,6);
prctiles_gaussian = norminv(0:0.01:1, mu, sigma);

figure(1);
qqplot(prctiles,prctiles_gaussian);
title('QQ-Plot of the measured distance vs Analytic model');
txt=['Analytic Model of Gaussian with     ?=',num2str(mu),'    ?=',num2str(sigma)];
xlabel(txt);
txty=['Measured distance at ',num2str(samples_output(:,1)),'m by Linksys 5.5G AP'];
ylabel(txty);
saveas(gcf,dir_outModel+'qqplot_distance_VS_model.png');
savefig(dir_outModel+'qqplot_distance_VS_model.fig');

%%  QQ-Plot of the measured distance VS other scenario

prctiles = prctile(distances, 0:1:100);
prctiles2 = prctile(distances2, 0:1:100);

%dir_out=

figure(2);
qqplot(prctiles,prctiles2);
title('QQ-Plot of Google 5G vs Linksys 2.4G');
saveas(gcf,dir_out+'qqplot_Google_VS_L2.4.png');
savefig(dir_out+'qqplot_Google_VS_L2.4.fig');
