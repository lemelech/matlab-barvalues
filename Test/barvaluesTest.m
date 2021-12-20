fig=figure;
x1 = subplot(2,2,1);  bar(randi(10,10,2),'stacked')
x2 = subplot(2,2,2); bar(randi(10,1,10)-10); hold on; bar(randi(10,1,10).^3)
x3 = subplot(2,2,3); plot(1:10)%bar(randi(10,1,10)); hold on; bar(randi(10,1,9))
x4 = subplot(2,2,4); bar(randi(10,10,4));
%barvalues(x1);
barvalues(fig);

%%
fig=figure;
x1 = subplot(4,1,1);  histogram(randi(10,1,1000));
barvalues(x1);

x2 = subplot(4,1,2);  histogram(randi(10,1,1000),'normalization','probability');
barvalues(x2);
%%
x=[1:10;11:20]; figure; bar(x','stacked');
barvalues; pause(0.5);
x=[1:10;11:20]; figure; h=bar(x','stacked');
barvalues(h); pause(0.5);
x=[1:10;11:20]; h=figure(); bar(x','Horizontal','on');
barvalues(h); pause(0.5);
x=[1:10;11:20]; figure; bar(x','grouped');
barvalues; pause(0.5);
x=[1:10;11:20]; figure(); h=barh(x','grouped');
barvalues(h); pause(0.5);
x=[1:10;11:20]; h=figure(); bar(x','grouped');
barvalues(h); pause(0.5);
x= [1:10;11:20;10:19;15:24]; figure(); h=bar(x','hist');
barvalues(h); pause(0.5);
x=[1:10;11:20;10:19;15:24]; figure(); h=histogram(x);
t=barvalues(h,3); pause(0.5);
x=[1:10;11:20;10:19;15:24]; figure(); h=histogram(x,'Normalization','pdf');
barvalues(h,3); pause(0.5);
x=[1:10;11:20;10:19;15:24]; figure(); h=histogram(x,'Normalization','cdf');
barvalues(h,3); pause(0.5);
x=[1:10;11:20;10:19;15:24]; figure(); h=axes; bar(x','histc');
t=barvalues(h); pause(0.5);

x=[1:10;11:20;10:19;15:24]; figure(); bar(x');
t=barvalues([],'%.0f%%'); pause(0.5);

figure;bar(1:10), barvalues([],'% .0f',{'FontSize', 50,'FontWeight', 'bold'});
testFontSize = 50;
h = figure; bar(1:10), t=barvalues(h,'% .0f',{'FontSize', testFontSize,'FontWeight', 'bold'});
assert(t{1}(1).FontSize == testFontSize);

TileFigures;