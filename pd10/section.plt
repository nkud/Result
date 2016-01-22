# set pm3d map
set terminal wxt size 800,1500

set size square
set size ratio 2
# set pm3d at b
set multiplot layout 4,5
unset key
# set title "100%"

set xlabel "免疫原性(%)"
set ylabel "根絶した回数"
unset xlabel
unset ylabel

set xrange [0:100]
set yrange [0:10]
set style line 1 lc 3
set style fill pattern 2 border
set style data lines

set ylabel "根絶した回数"
set title "5%" offset 0,-0.5
plot 'section-ih5.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

unset ylabel
set title "10%"
plot 'section-ih10.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

unset ylabel
set title "15%"
plot 'section-ih15.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

unset ylabel
set title "20%"
plot 'section-ih20.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

unset ylabel
set title "25%"
plot 'section-ih25.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

set ylabel "根絶した回数"
plot 'section-ih30.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

unset ylabel
set title "35%"
plot 'section-ih35.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

unset ylabel
set title "40%"
plot 'section-ih40.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

unset ylabel
set title "45%"
plot 'section-ih45.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

unset ylabel
set title "50%"
plot 'section-ih50.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

set ylabel "根絶した回数"
set title "55%"
plot 'section-ih55.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

# ------------
unset ylabel
set title "60%"
plot 'section-ih60.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

set title "65%"
plot 'section-ih65.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

set title "70%"
plot 'section-ih70.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

set title "75%"
plot 'section-ih75.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

# ------------
set ylabel "根絶した回数"
set xlabel "免疫原性(%)"
set title "80%"
plot 'section-ih80.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

unset ylabel
set title "85%"
plot 'section-ih85.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

set title "90%"
plot 'section-ih90.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

set title "95%"
plot 'section-ih95.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

set title "100%"
plot 'section-ih100.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle

# unset xlabel
# set format x ""
# set ylabel "根絶した回数"
# set tmargin 1
# set lmargin 8
# set bmargin 2
# set rmargin 0
# plot 'section-ih100.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle


# unset xlabel
# set format x ""
# unset ylabel
# set tmargin 1
# set lmargin 2
# set bmargin 2
# set rmargin 6
# plot 'section-ih100.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle


# set tmargin 0
# set lmargin 8
# set bmargin 3
# set rmargin 0
# plot 'section-ih100.txt' u 1:2:3 linestyle 1 w filledcu, '' u 1:2 lt -1 notitle, '' u 1:3 lt -1 notitle



pause -1
