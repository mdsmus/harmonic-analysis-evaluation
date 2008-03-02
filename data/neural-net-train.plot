
set terminal post enh
set output "data/neural-net-train.eps"

set xrange [0:45]
set yrange [30:100]

set grid
set xlabel "Hidden Units"
set ylabel "Accuracy (%)"


     

plot "data/neural-net-train.data" using 1:2 title "s-net" with linespoints lt 2 pt 1 lw 4,  \
     "data/neural-net-train.data" using 1:3 title "es-net" with linespoints pt 0 lw 4,  \
     "data/neural-net-train.data" using 1:4 title "ec-net" with linespoints lt 4 pt 3 lw 4
