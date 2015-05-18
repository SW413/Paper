set term epslatex
set output 'testGraph.tex'
set xlabel 'Number of entries in result matrix'
set ylabel 'Time in seconds'
set title 'Execution Time Test'
set grid
plot 'cpu.data' using 1:2 with line t 'CPU' lw 1, 'gpu.data' using 1:2 with line t 'GPU' lw 1
replot