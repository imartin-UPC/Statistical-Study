% Load sample file
path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Vertical\23m\11-03-2020 162330-samples.txt";
samples=csvread(path);
distances=samples(:,3);

% Load samples_output file
path2="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Vertical\23m\samples_output.txt";
samples_output=load(path2);


% QQ-Plot of the measured distance VS analytic model

prctiles = prctile(distances, 0:1:100);
mu=samples_output(:,2);
sigma=samples_output(:,6);
prctiles_gaussian = norminv(0:0.01:1, mu, sigma);
dir_outModel="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Vertical\23m\";

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

% Load sample file
path="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Escenarios\Linksys\5G\5.1G\Interior Pasillo\Orientacion Vertical\23m\10-03-2020 181715-samples.txt";
samples=csvread(path);
distances=samples(:,3);
dir_out="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Comparaciones\Linksys 5,1 vs Linksys 5,5\Orientación Vertical\23m\";

% Load samples file 2
path3="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Sample files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Vertical\23m\11-03-2020 162330-samples.txt";
samples2=load(path3);
distances2=samples2(:,3);

prctiles = prctile(distances, 0:1:100);
prctiles2 = prctile(distances2, 0:1:100);

figure(2);
qqplot(prctiles,prctiles2);

txt=['QQ-Plot of Linksys 5.1G AP vs Linksys 5.5G AP at ',num2str(mean(samples(:,2))),'m'];
title(txt);
xlabel('Linksys 5.1G AP');
ylabel('Linksys 5.5G AP');
saveas(gcf,dir_out+'qqplot_Linksys5.1_VS_Linksys5.5.png');
savefig(dir_out+'qqplot_Linksys5.1_VS_Linksys5.5.fig');
