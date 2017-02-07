import os

import sys

if len(sys.argv) < 3 :
    print 'Please tell me which input file you want me to read and which nuisance are you reading'
    print 'python submitAll.py samples_mc_l2tight.txt nominal'
    print 'python submitAll.py samples_data_l2tight.txt nominal'
    sys.exit(1)

inputFile = sys.argv[1]
nuisance = sys.argv[2]

with open(inputFile) as f:
    content = f.readlines()
    content = [x.strip() for x in content] 

for indexSamples in range(len(content)) :
    # print content[indexSamples]
    # print("bsub -q 1nh -o jobs/ branches_mc.sh " + content[indexSamples] + " " + nuisance)
    os.system("bsub -q 1nh -o jobs/ branches_mc.sh " + content[indexSamples] + " " +  nuisance)

