#!/bin/sh

SAMPLE=$1
NUISANCE=$2

cd /afs/cern.ch/user/n/ntrevisa/work/CMSSW_8_0_5/src/

eval `scramv1 runtime -sh`

cd MUCCA/Optimization/

mkdir -p jobs

cd jobs

#`gardener.py mucca2HDMVarFiller --signal=\"2HDMadaptTTbar\" ~/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/$NUISANCE/MonoH/$SAMPLE ~/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/$NUISANCE/MonoH/`

#`gardener.py mucca2HDMFullVarFiller --signal=\"2HDMadaptTTbarFull\" ~/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/$NUISANCE/MonoH/$SAMPLE ~/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/$NUISANCE/MonoH/`

# `gardener.py muccaZbarVarFiller --signal=\"ZbaradaptTTbar\" ~/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/$NUISANCE/MonoH/$SAMPLE  ~/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/$NUISANCE/MonoH/`

`gardener.py muccaZbarFullVarFiller --signal=\"ZbaradaptTTbarFull\" ~/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/$NUISANCE/MonoH/$SAMPLE  ~/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/$NUISANCE/MonoH/`

