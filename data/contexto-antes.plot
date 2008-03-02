
set terminal post enh
set output "data/contexto-antes.eps"

set xrange [0:6]
set yrange [80:100]

set grid
set xlabel "Number of sonorities preceding the one being analyzed"
set ylabel "Accuracy (%)"

plot "data/contexto-antes.data" using 1:2 title "ec-knn" with linespoints lt 2 pt 1 lw 4,  \
     "data/contexto-antes.data" using 1:3 title "ec-net" with linespoints lt 3  pt 0 lw 4
