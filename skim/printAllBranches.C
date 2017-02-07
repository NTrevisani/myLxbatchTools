#include "TObjArray.h"
#include <iostream>
#include <fstream>

using namespace std;

void printAllBranches(){

  std::ofstream outFileMC("branches_mc.txt",std::ios::out);
  std::ofstream outFileDATA("branches_data.txt",std::ios::out);
  std::ofstream outFileFAKE("branches_fake.txt",std::ios::out);

  TFile* f_mc = new TFile("root://eoscms.cern.ch//eos/cms/store/group/phys_higgs/cmshww/amassiro/HWW12fb_repro/07Jun2016_spring16_mAODv2_12pXfbm1_repro/MCl2loose__hadd__bSFL2pTEff__l2tight/latino_monoH_2HDM_MZp-2500_MA0-800.root");
  TFile* f_data = new TFile("root://eoscms.cern.ch//eos/cms/store/group/phys_higgs/cmshww/amassiro/HWW12fb_repro/21Jun2016_v2_Run2016B_PromptReco_repro/l2loose__hadd__EpTCorr__l2tight/latino_Run2016B_PromptReco_DoubleEG.root");
  TFile* f_fake = new TFile("root://eoscms.cern.ch//eos/cms/store/group/phys_higgs/cmshww/amassiro/HWW12fb_repro/21Jun2016_v2_Run2016B_PromptReco_repro/l2loose__hadd__EpTCorr__fakeW12fb/latino_Run2016B_PromptReco_DoubleEG.root");

  TTree* t_mc = (TTree*) f_mc -> Get("latino");
  TTree* t_data = (TTree*) f_data -> Get("latino");
  TTree* t_fake = (TTree*) f_fake -> Get("latino");

  TObjArray *l_mc = t_mc -> GetListOfBranches();
  TObjArray *l_data = t_data -> GetListOfBranches();
  TObjArray *l_fake = t_fake -> GetListOfBranches();

  int length_mc = l_mc->GetEntries();
  int length_data = l_data->GetEntries();
  int length_fake = l_fake->GetEntries();

  for (int i = 0; i < length_mc; ++i){
    outFileMC<<"-d \""<<l_mc->At(i)->GetName()<<"\" \\"<<endl;
  }
  outFileMC.close();

  for (int j = 0; j < length_data; ++j){
    outFileDATA<<"-d \""<<l_data->At(j)->GetName()<<"\" \\"<<endl;
  }
  outFileDATA.close();

  for (int k = 0; k < length_fake; ++k){
    outFileFAKE<<"-d \""<<l_fake->At(k)->GetName()<<"\" \\"<<endl;
  }
  outFileFAKE.close();

}
