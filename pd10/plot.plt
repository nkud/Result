set pm3d map
set size square
# set pm3d at b
set xlabel "免疫チェックポイント阻害薬適用率(%)"
set ylabel "免疫原性(%)"
splot 'eradicate-pd10.txt'
pause -1
