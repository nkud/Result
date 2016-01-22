# set pm3d map
set size square
set size ratio 2
# set pm3d at b
unset key
set title "免疫CB薬適用率 : 100%"
set xlabel "免疫原性(%)"
set ylabel "根絶した回数"
set xrange [0:100]
set yrange [0:10]
set style line 1 lc 3
set style fill pattern 2 border
set style data lines
plot 'section-ih100.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle
pause -1
