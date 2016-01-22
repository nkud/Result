#! /usr/bin/python
# -*- coding: utf-8 -*-

import os

immuno_range = range(5, 105, 5)
pdl1_range = [10]
inhibitor_range = range(5, 105, 5)

dic = {}
lasttcdic = {}
haveUnder50 = {}

foe = open('data-pd10.txt', 'r')

for line in foe:
    ih = int(line.split()[0].split('-')[3][2:])
    pd = int(line.split()[0].split('-')[4][2:])
    im = int(line.split()[0].split('-')[5][2:])
    er = line.split()[1]
    tc = int(line.split()[2])
    under50 = line.split()[3]
    if not "%d-%d-%d"%(ih,pd,im) in dic:
        dic["%d-%d-%d"%(ih,pd,im)] = 0
        lasttcdic["%d-%d-%d"%(ih,pd,im)] = 0
        haveUnder50["%d-%d-%d"%(ih,pd,im)] = 0

    lasttcdic["%d-%d-%d"%(ih,pd,im)] += tc
    if er == 'True':
        dic["%d-%d-%d"%(ih,pd,im)] += 1
    if under50 == 'True' and er != 'True':
        haveUnder50["%d-%d-%d"%(ih,pd,im)] += 1

print 'dic size: %d'%len(dic)
print 'lasttcdic size: %d'%len(lasttcdic)
print 'under50 size: %d'%len(under50)

fo = open('eradicate-pd10.txt', 'w')
fo_lasttc = open('lasttc-pd10.txt', 'w')
fo_have50 = open('have-under-50.txt', 'w')
for inhibitor in inhibitor_range:
    # 各ihの断面図用
    fo_ih = open('section-ih%d.txt'%inhibitor, 'w')

    for immuno in immuno_range:
        if "%d-%d-%d"%(inhibitor,10,immuno) in dic:
            print haveUnder50["%d-%d-%d" % (inhibitor,10,immuno)],
            fo.write('%d %d %d\n' % (inhibitor, immuno, dic["%d-%d-%d" % (inhibitor,10,immuno)]))
            fo_lasttc.write('%d %d %d\n' % (inhibitor, immuno, lasttcdic["%d-%d-%d" % (inhibitor,10,immuno)]))
            fo_have50.write('%d %d %d\n' % (inhibitor, immuno, haveUnder50["%d-%d-%d" % (inhibitor,10,immuno)]))
            fo_ih.write('%d %d 0\n' % (immuno, dic["%d-%d-%d" % (inhibitor,10,immuno)]))
        else:
            fo.write('%d %d %d\n' % (inhibitor, immuno, 0))
            fo_lasttc.write('%d %d %d\n' % (inhibitor, immuno, 0))
            fo_have50.haveUnder50('%d %d %d\n' % (inhibitor, immuno, 0))
            fo_ih.write('%d &d 0\n' % (immuno, 0))
    print ''
    fo.write('\n')
    fo_lasttc.write('\n')
    fo_have50.write('\n')
    fo_ih.close()
fo.close()
fo_lasttc.close()
fo_have50.close()

raw_input()
