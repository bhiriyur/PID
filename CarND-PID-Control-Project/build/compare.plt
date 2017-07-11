set terminal wxt size 1200,800
#set term qt noraise

set multiplot layout 3, 2 title "PID Control" font ",14"

set title 'Steering P-error'
plot 'steer.out.t45' u 1 w l lt 1, \
     'steer.out.t50' u 1 w l lt 4
unset key


set title 'Steering I-error'
plot 'steer.out.t45' u 2 w l lt 1, \
     'steer.out.t50' u 2 w l lt 4
unset key

set title 'Steering D-error'
plot 'steer.out.t45' u 3 w l lt 1, \
     'steer.out.t50' u 3 w l lt 4
unset key

set title 'Steering Control'
plot 'steer.out.t45' u 6 w l lt 1, \
     'steer.out.t50' u 6 w l lt 4
unset key

set title 'Speed'
plot 'steer.out.t45' u 5 w l lt 1, \
     'steer.out.t50' u 5 w l lt 4
unset key

set title 'Max Error'
plot 'steer.out.t45' u 4 w l lt 1, \
     'steer.out.t50' u 4 w l lt 4
unset key

unset multiplot

pause -1;
