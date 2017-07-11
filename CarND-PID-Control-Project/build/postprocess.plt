#set terminal wxt size 1200,800
set term qt noraise

set multiplot layout 3, 2 title "PID Control" font ",14"

set title 'Steering P-error'
plot 'steer.out' u 1 w l lt 1, \
     'steer.out' u 4 w l lt 4
unset key


set title 'Steering I-error'
plot 'steer.out' u 2 w l lt 2
unset key


set title 'Steering D-error'
plot 'steer.out' u 3 w l lt 3
unset key


set title 'Steering Control'
plot 'steer.out' u 6 w l lt 7
unset key


set title 'Throttle Control'
plot 'throttle.out' u 6 w l lt 7
unset key

set grid
set title 'Speed'
plot 'throttle.out' u 5 w l lt 6
unset key

unset multiplot

pause 1;
reread;
refresh;