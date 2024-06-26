clc;
clear;

Xmin = 3.9;
Xmax = 12.1;
Ymin = 0.01;
Ymax = 100000;
X = [  4 5 6 7 8 9 10 11 12];
Y = [0.01 0.1 1 10 100 1000 10000 100000];
save('axisdata.mat');

clear;

msize = 10;
fsize = 24;

fh = figure(1);
clf(1);
set(fh,'color','white');


load MethodNum=113RangeIterationsDataM=3Date17-Apr-2007.mat
Nchan = 7:12;
WallClockMatPLOT(:,1:4) = WallClockMat(:,7:10);
load MethodNum=113RangeIterationsDataM=3Date19-Apr-2007.mat
WallClockMatPLOT(:,5:6) = WallClockMat(:,11:12);
    errorbar(Nchan,mean(WallClockMatPLOT),std(WallClockMatPLOT),'k-o','MarkerFaceColor',[ 1 1 1], 'MarkerSize', msize); errorbarlogy;
    hold on
axis([3.9 12.1 0.01 100000]);
axis off;

%clear
load MethodNum=152RangeIterationsDataM=3Date18-Apr-2007.mat
Nchan = 7:12;
WallClockMatPLOT(:,1:4) = WallClockMat(:,7:10);
load MethodNum=152RangeIterationsDataM=3Date19-Apr-2007N12.mat
WallClockMatPLOT(:,5:6) = WallClockMat(:,11:12);
    errorbar(Nchan,mean(WallClockMatPLOT),std(WallClockMatPLOT),'k-o','MarkerFaceColor',[ 0.6 0.6 0.6], 'MarkerSize', msize);errorbarlogy;
    hold on

axis([3.9 12.1 0.01 100000]);
axis off;

%clear
load MethodNum=157RangeIterationsDataM=3Date18-Apr-2007.mat
Nchan = 7:12;
WallClockMatPLOT(:,1:4) = WallClockMat(:,7:10);
load MethodNum=157RangeIterationsDataM=3Date19-Apr-2007N12.mat
WallClockMatPLOT(:,5:6) = WallClockMat(:,11:12);
    errorbar(Nchan,mean(WallClockMatPLOT),std(WallClockMatPLOT),'k-o','MarkerFaceColor',[ 0.3 0.3 0.3], 'MarkerSize', msize);errorbarlogy;
    hold on

axis([3.9 12.1 0.01 100000]);
axis off;

%clear
A = load('../Output/ResultsM3/extracted.txt');
Nchan = 7:12;
WallClockMat = [];
for k=1:6
    WallClockMat(:, k) = A((5*(k-1)+1):5*k, 3);
end
    errorbar(Nchan,mean(WallClockMat),std(WallClockMat),'k-o','MarkerFaceColor',[ 0 0 0], 'MarkerSize', msize);errorbarlogy;
    hold on

axis([3.9 12.1 0.01 100000]);
axis off;

%clear;
load MethodNum=113RangeIterationsDataM=6Date18-Apr-2007.mat
Nchan = 3:8;
WallClockMat = WallClockMat(:,3:end);
    errorbar(Nchan,mean(WallClockMat),std(WallClockMat),'k-s','MarkerFaceColor',[ 1 1 1], 'MarkerSize', msize);errorbarlogy;
    hold on

axis([3.9 12.1 0.01 100000]);
axis off;

%clear;
load MethodNum=152RangeIterationsDataM=6Date19-Apr-2007.mat
Nchan = 2:8;
WallClockMat = WallClockMat(:,2:end);
    errorbar(Nchan,mean(WallClockMat),std(WallClockMat),'k-s','MarkerFaceColor',[ 0.6 0.6 0.6], 'MarkerSize', msize);errorbarlogy;
    hold on

axis([3.9 12.1 0.01 100000]);
axis off;

load MethodNum=157RangeIterationsDataM=6Date19-Apr-2007.mat
Nchan = 4:7;
WallClockMat = WallClockMat(:,4:end);
    errorbar(Nchan,mean(WallClockMat),std(WallClockMat),'k-s','MarkerFaceColor',[ 0.3 0.3 0.3], 'MarkerSize', msize);errorbarlogy;
    hold on

axis([3.9 12.1 0.01 100000]);
axis off;

%clear
A = load('../Output/ResultsM6/extracted.txt');
Nchan = 4:8;
WallClockMat = [];
for k=1:5
    WallClockMat(:, k) = A((5*(k-1)+1):5*k, 3);
end
    errorbar(Nchan,mean(WallClockMat),std(WallClockMat),'k-s','MarkerFaceColor',[ 0 0 0], 'MarkerSize', msize);errorbarlogy;
    hold on

axis([3.9 12.1 0.01 100000]);
axis off;

% Axis creation commands
load axisdata.mat;
a = get(gca,'position');
xs = get(gca,'xscale');
ys = get(gca,'yscale');
set(gca,'position',a)
h = axes('position',[a(1) a(2)-0.02 a(3) 0.000001]);
set(gca,'TickDir','out','box','off','fontsize', fsize, 'xscale',xs,'ticklength',[0.01 0],'xlim',[Xmin Xmax],'XTick',X,'XMinorTick','off');
h = axes('position',[a(1)-0.02 a(2) 0.000001 a(4)]);
set(gca,'TickDir','out','box','off','fontsize', fsize,'yscale',ys,'ticklength',[0.01 0],'ylim',[Ymin Ymax],'YTick',Y,'YMinorTick','off');


saveas(1,'Figure1_mat.eps','epsc')
%!pstopdf Figure1.eps
%!open Figure1.pdf

