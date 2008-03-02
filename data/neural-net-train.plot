
set terminal post enh "Helvetica" 24
set output "data/neural-net-train.eps"

set xrange [0:60]
set yrange [30:100]

set grid
set xlabel "Hidden Units"
set ylabel "Accuracy (%)"


     

plot "data/neural-net-train.data" using 1:3 title "es-net" with linespoints pt 0 lw 4,  \
     "data/neural-net-train.data" using 1:4 title "ec-net" with linespoints lt 4 pt 3 lw 4
