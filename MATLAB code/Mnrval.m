clear all;
load('HRarray.mat'); %heart rate data in BPM?
load('Temparray.mat'); %temperature data in Fahrenheit?
load('Timed.mat'); %time data corresponding to above data in seconds?
%Time = time; %add in later for a time series analysis?
Lev = zeros(29994,1);
Lev(1:5927,1) = 0; %1 - 5927 = 0 for up to 119 seconds fatigue rating 0 ?
Lev(5928:14189,1) = 1; %5928 - 14189 = 1 for 119 to 284 sec fatigue rating 1?
Lev(14190:22450,1) = 2; %14190 - 22450 = 2 for 285 to 450 sec fatigue rat 2?
Lev(22451:29994,1) = 3; %22451 to end = 3 for 451 to 600 sec fatigue rating 3?
Y = categorical(Lev,[0 1 2 3], 'Ordinal', true); 
%pred = [HRarray Temparray];
%[Bord,dev,stats] = mnrfit(Temparray,Y,'model','ordinal')
%BOrd = [Bord(1:3)';repmat(Bord(4:end),1,3)]

Testvar = Temparray;

b = mnrfit(Testvar,Y,'model','ordinal');
xx = linspace(min(Testvar), max(Testvar))';
pp = mnrval(b, xx, 'model', 'ordinal');
plot(xx, pp, 'Linewidth', 2)
legend('Not Fatigued', 'Somewhat Fatigued', 'Fairly Fatigued', 'Very Fatigued', 'Fontsize', 15)
ylabel('Probability', 'Fontsize', 25)
xlabel('HR (beats/min)', 'Fontsize', 25)
set(gca,'FontSize',20)

