set term pdfcairo
set output 'graph.pdf'
set xlabel 'Number of entries in result matrix'
set ylabel 'Time in seconds'
set title 'Execution Time Test'
set grid 
set key left
f(x)=a*x**b;
fit f(x) 'cpu.data' via a,b
g(x)=c*x+d;
fit g(x) 'gpu.data' via c,d 
plot 'cpu.data' using 1:2 title ' CPU', \
    f(x) with lines notitle, \
    'gpu.data' using 1:2 title ' GPU', \
    g(x) with lines notitle