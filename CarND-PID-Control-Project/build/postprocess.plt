#set terminal wxt size 1200,800
set term qt noraise

set multiplot layout 3, 2 title "STEERING PID" font ",14"

set title 'P-error'
plot 'steer.out' u 1 w l t 'p_error'
unset key


set title 'I-error'
plot 'steer.out' u 2 w l t 'i_error'
unset key


set title 'D-error'
plot 'steer.out' u 3 w l t 'd_error'
unset key


set title 'Control'
plot 'steer.out' u 4 w l t 'd_error'
unset key

set grid
set title 'Throttle'
plot 'throttle.out' u 1 w l t 'CTE', \
     'throttle.out' u 4 w l t 'Throttle'
unset key

unset multiplot

pause 1;
reread;
refresh;