# output as png image
set terminal canvas

# save file to "out.png"
set output "benchmark2.html"

# graph title
set title "ab -n 10000 -c 100"

# nicer aspect ratio for image size
set size 1,0.7

# y-axis grid
set grid y

# x-axis label
set xlabel "request"

# y-axis label
set ylabel "response time (ms)"

# plot data from "out.dat" using column 9 with smooth sbezier lines
# and title of "nodejs" for the given data
plot "puma_2.dat" using 9 smooth sbezier with lines title "Puma", \
     "rainbows.dat" using 9 smooth sbezier with lines title "Rainbows!"
