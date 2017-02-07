import os

import sys

if len(sys.argv) < 2 :
    print 'Please tell me which variable you want me to add'
    print 'python gardenerAll.py 2HDM'
    print 'python gardenerAll.py Zbar'
    print 'python gardenerAll.py 2HDMFull'
    print 'python gardenerAll.py ZbarFull'
    sys.exit(1)

[step] = sys.argv[1:]

nuisances=['nominal','sfSel__JESup','sfSel__JESdo','sfSel__METup','sfSel__METdo','sfSel__ElepTup','sfSel__ElepTdo','sfSel__MupTup','sfSel__MupTdo','wwSel__JESup','wwSel__JESdo','wwSel__METup','wwSel__METdo','wwSel__ElepTup','wwSel__ElepTdo','wwSel__MupTup','wwSel__MupTdo']

for index in range(len(nuisances)) :
    samples = os.listdir("/afs/cern.ch/user/n/ntrevisa/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/" + nuisances[index] + "/MonoH/")
    for indexSamples in range(len(samples)) :
        if step == '2HDM':
            print("bsub -q 1nh -o jobs/ submit-gardener-2HDM.sh " + samples[indexSamples] + " " + nuisances[index])
            os.system("bsub -q 1nh -o jobs/ submit-gardener-2HDM.sh " + samples[indexSamples] + " " + nuisances[index])
        elif step == 'Zbar':
            print("bsub -q 1nh -o jobs/ submit-gardener-Zbar.sh " + samples[indexSamples] + " " + nuisances[index])
            os.system("bsub -q 1nh -o jobs/ submit-gardener-Zbar.sh " + samples[indexSamples] + " " + nuisances[index])
        elif step == '2HDMFull':
            print("bsub -q 1nh -o jobs/ submit-gardener-2HDMFull.sh " + samples[indexSamples] + " " + nuisances[index])
            os.system("bsub -q 1nh -o jobs/ submit-gardener-2HDMFull.sh " + samples[indexSamples] + " " + nuisances[index])
        elif step == 'ZbarFull':
            print("bsub -q 1nh -o jobs/ submit-gardener-ZbarFull.sh " + samples[indexSamples] + " " + nuisances[index])
            os.system("bsub -q 1nh -o jobs/ submit-gardener-ZbarFull.sh " + samples[indexSamples] + " " + nuisances[index])
        else :
            print("I don't know this kind of variable, sorry")
