%% Establish path to wanted files

path1="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\1m\samples_output.txt";
path2="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\2m\samples_output.txt";
path3="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\3m\samples_output.txt";
path4="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\4m\samples_output.txt";
path5="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\5m\samples_output.txt";
path6="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\6m\samples_output.txt";
path7="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\7m\samples_output.txt";
path8="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\8m\samples_output.txt";
path9="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\9m\samples_output.txt";
path10="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\10m\samples_output.txt";
path11="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\11m\samples_output.txt";
path12="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\12m\samples_output.txt";
path13="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\13m\samples_output.txt";
path14="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\14m\samples_output.txt";
path15="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\15m\samples_output.txt";
path16="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\16m\samples_output.txt";
path17="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\17m\samples_output.txt";
path18="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\18m\samples_output.txt";
path19="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\19m\samples_output.txt";
path20="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\20m\samples_output.txt";
path21="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\21m\samples_output.txt";
path22="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\22m\samples_output.txt";
path23="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\23m\samples_output.txt";

%% Load the values from the file

input1=load(path1);
input2=load(path2);
input3=load(path3);
input4=load(path4);
input5=load(path5);
input6=load(path6);
input7=load(path7);
input8=load(path8);
input9=load(path9);
input10=load(path10);
input11=load(path11);
input12=load(path12);
input13=load(path13);
input14=load(path14);
input15=load(path15);
input16=load(path16);
input17=load(path17);
input18=load(path18);
input19=load(path19);
input20=load(path20);
input21=load(path21);
input22=load(path22);
input23=load(path23);

%% Create the output vectors

std_ev=zeros(23);
std_ev(1)=input1(:,6);
std_ev(2)=input2(:,6);
std_ev(3)=input3(:,6);
std_ev(4)=input4(:,6);
std_ev(5)=input5(:,6);
std_ev(6)=input6(:,6);
std_ev(7)=input7(:,6);
std_ev(8)=input8(:,6);
std_ev(9)=input9(:,6);
std_ev(10)=input10(:,6);
std_ev(11)=input11(:,6);
std_ev(12)=input12(:,6);
std_ev(13)=input13(:,6);
std_ev(14)=input14(:,6);
std_ev(15)=input15(:,6);
std_ev(16)=input16(:,6);
std_ev(17)=input17(:,6);
std_ev(18)=input18(:,6);
std_ev(19)=input19(:,6);
std_ev(20)=input20(:,6);
std_ev(21)=input21(:,6);
std_ev(22)=input22(:,6);
std_ev(23)=input23(:,6);




%% Plot the desired graphic

x=1:1:23;
dir_out="C:\Users\ffran\Dropbox\TFG\Statistical-Study\Output files\Escenarios\Linksys\5G\5.5G\Interior Pasillo\Orientacion Horizontal\";

figure(1);
graphic=plot(x,std_ev(:,1));
xlabel('Distance between AP & Smartphone')
title('STD Evolution');
saveas(gcf,dir_out+'std_evolution.png');
savefig(dir_out+'std_evolution.fig');
