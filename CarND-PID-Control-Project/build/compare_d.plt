set terminal wxt size 1200,800
#set term qt noraise

set xrange [200:800]
set multiplot layout 3, 2 title "PID Control" font ",14"

set title 'Steering P-error'
plot 'steer.out.d0.6' u 1 w l lt 1 t 'Kd=0.6', \
     'steer.out.d0.7' u 1 w l lt 4 t 'Kd=0.7', \
     'steer.out.d0.8' u 1 w l lt 7 t 'Kd=0.8'
unset key

set title 'Steering I-error'
plot 'steer.out.d0.6' u 2 w l lt 1 t 'Kd=0.6', \
     'steer.out.d0.7' u 2 w l lt 4 t 'Kd=0.7', \
     'steer.out.d0.8' u 2 w l lt 7 t 'Kd=0.8'
unset key

set title 'Steering D-error'
plot 'steer.out.d0.6' u 3 w l lt 1 t 'Kd=0.6', \
     'steer.out.d0.7' u 3 w l lt 4 t 'Kd=0.7', \
     'steer.out.d0.8' u 3 w l lt 7 t 'Kd=0.8'
unset key

set title 'Max-Error'
plot 'steer.out.d0.6' u 4 w l lt 1 t 'Kd=0.6', \
     'steer.out.d0.7' u 4 w l lt 4 t 'Kd=0.7', \
     'steer.out.d0.8' u 4 w l lt 7 t 'Kd=0.8'
unset key

set title 'Speed'
plot 'steer.out.d0.6' u 5 w l lt 1 t 'Kd=0.6', \
     'steer.out.d0.7' u 5 w l lt 4 t 'Kd=0.7', \
     'steer.out.d0.8' u 5 w l lt 7 t 'Kd=0.8'
unset key

set title 'Steering Control'
plot 'steer.out.d0.6' u 6 w l lt 1 t 'Kd=0.6', \
     'steer.out.d0.7' u 6 w l lt 4 t 'Kd=0.7', \
     'steer.out.d0.8' u 6 w l lt 7 t 'Kd=0.8'
unset key

unset multiplot

pause -1;
