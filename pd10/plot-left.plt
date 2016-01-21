# set pm3d map
set size square
# set pm3d at b
set xlabel "免疫チェックポイント阻害薬適用率(%)" offset 0,-1
set ylabel "免疫原性(%)"
splot 'eradicate-pd10.txt' w pm3d
pause -1
