set terminal wxt size 1200,800
#set term qt noraise

set xrange [200:800]
set multiplot layout 3, 2 title "PID Control" font ",14"

set title 'Steering P-error'
plot 'steer.out.p0.055' u 1 w l lt 1 t 'Kp=0.055', \
     'steer.out.p0.058' u 1 w l lt 4 t 'Kp=0.058', \
     'steer.out.p0.062' u 1 w l lt 7 t 'Kp=0.062'
unset key

set title 'Steering I-error'
plot 'steer.out.p0.055' u 2 w l lt 1 t 'Kp=0.055', \
     'steer.out.p0.058' u 2 w l lt 4 t 'Kp=0.058', \
     'steer.out.p0.062' u 2 w l lt 7 t 'Kp=0.062'
unset key

set title 'Steering D-error'
plot 'steer.out.p0.055' u 3 w l lt 1 t 'Kp=0.055', \
     'steer.out.p0.058' u 3 w l lt 4 t 'Kp=0.058', \
     'steer.out.p0.062' u 3 w l lt 7 t 'Kp=0.062'
unset key

set title 'Max-Error'
plot 'steer.out.p0.055' u 4 w l lt 1 t 'Kp=0.055', \
     'steer.out.p0.058' u 4 w l lt 4 t 'Kp=0.058', \
     'steer.out.p0.062' u 4 w l lt 7 t 'Kp=0.062'
unset key

set title 'Speed'
plot 'steer.out.p0.055' u 5 w l lt 1 t 'Kp=0.055', \
     'steer.out.p0.058' u 5 w l lt 4 t 'Kp=0.058', \
     'steer.out.p0.062' u 5 w l lt 7 t 'Kp=0.062'
unset key

set title 'Steering Control'
plot 'steer.out.p0.055' u 6 w l lt 1 t 'Kp=0.055', \
     'steer.out.p0.058' u 6 w l lt 4 t 'Kp=0.058', \
     'steer.out.p0.062' u 6 w l lt 7 t 'Kp=0.062'
unset key

unset multiplot

pause -1;
