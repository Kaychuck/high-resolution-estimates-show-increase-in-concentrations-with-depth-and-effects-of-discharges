%read in dates
dat_in= readtable("IN_date.csv")
dat2_in=table2array(dat_in)
dat2_in= dat2_in';
Date3 = dat2_in(1,:);

%read in depths (numbers)
dep_in =readtable("IN_depth1.csv")
dep2_in=table2array(dep_in)

% read in concentrations at each depth
speed_in =readtable("in_TPP.csv")
speed2_in=table2array(speed_in)
speed2_in= speed2_in';

%combine to grid

[X3,Y3]=meshgrid(dat2_in,dep2_in);



% plot figure
    figure
   
    pcolor(X3,Y3,speed2_in)
     set ( gca, 'ydir', 'reverse' )
    shading flat
    colorbar
    title('TSS (mg L^-^1)')
    ylabel('Depth (m)')
    datetick('x','keeplimits','keepticks')
  % caxis([0, 8])
   colormap jet