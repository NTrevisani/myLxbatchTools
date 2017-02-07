#!/bin/sh

SAMPLE=$1
NUISANCE=$2

cd /afs/cern.ch/user/n/ntrevisa/work/CMSSW_8_0_5/src/

eval `scramv1 runtime -sh`

cd LatinoAnalysis/Gardener/test

mkdir -p jobs

cd jobs

mkdir -p /afs/cern.ch/user/n/ntrevisa/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/
mkdir -p /afs/cern.ch/user/n/ntrevisa/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/$NUISANCE/
mkdir -p /afs/cern.ch/user/n/ntrevisa/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/$NUISANCE/MonoH/

-d "Gen_ZGstar_MomId" \
-d "Gen_ZGstar_MomInitStatus" \
-d "Gen_ZGstar_MomStatus" \
-d "Gen_ZGstar_deltaR" \
-d "Gen_ZGstar_ele1_eta" \
-d "Gen_ZGstar_ele1_phi" \
-d "Gen_ZGstar_ele1_pt" \
-d "Gen_ZGstar_ele2_eta" \
-d "Gen_ZGstar_ele2_phi" \
-d "Gen_ZGstar_ele2_pt" \
-d "Gen_ZGstar_mass" \
-d "Gen_ZGstar_mu1_eta" \
-d "Gen_ZGstar_mu1_phi" \
-d "Gen_ZGstar_mu1_pt" \
-d "Gen_ZGstar_mu2_eta" \
-d "Gen_ZGstar_mu2_phi" \
-d "Gen_ZGstar_mu2_pt" \
-d "chSumEt" \
-d "chmet" \
-d "chmetphi" \
-d "effW" \
-d "egammaHFMinus_counts" \
-d "egammaHFMinus_sumPt" \
-d "egammaHFPlus_counts" \
-d "egammaHFPlus_sumPt" \
-d "fakeW" \
-d "gammaBarrel_counts" \
-d "gammaBarrel_sumPt" \
-d "gammaEndcapMinus_counts" \
-d "gammaEndcapMinus_sumPt" \
-d "gammaEndcapPlus_counts" \
-d "gammaEndcapPlus_sumPt" \
-d "h0Barrel_counts" \
-d "h0Barrel_sumPt" \
-d "h0EndcapMinus_counts" \
-d "h0EndcapMinus_sumPt" \
-d "h0EndcapPlus_counts" \
-d "h0EndcapPlus_sumPt" \
-d "hEtaMinus_counts" \
-d "hEtaMinus_sumPt" \
-d "hEtaPlus_counts" \
-d "hEtaPlus_sumPt" \
-d "hHFMinus_counts" \
-d "hHFMinus_sumPt" \
-d "hHFPlus_counts" \
-d "hHFPlus_sumPt" \
-d "hardbjpb" \
-d "hardcmvav2" \
-d "hardcsvv2ivf" \
-d "hardpfcsv" \
-d "hardssvhb" \
-d "hardssvhe" \
-d "hardtche" \
-d "imet" \
-d "itpu" \
-d "jetRho" \
-d "jetRhoCalo" \
-d "jetcmvav21" \
-d "jetcmvav22" \
-d "jetcsvv2ivf1" \
-d "jetcsvv2ivf2" \
-d "jetpfcsv1" \
-d "jetpfcsv2" \
-d "jetssvhb1" \
-d "jetssvhb2" \
-d "jetssvhe1" \
-d "jetssvhe2" \
-d "kfW" \
-d "mctruth" \
-d "metPfNoHf" \
-d "metPfProj" \
-d "metPfProjElecEnDn" \
-d "metPfProjElecEnUp" \
-d "metPfProjJetEnDn" \
-d "metPfProjJetEnUp" \
-d "metPfProjJetResDn" \
-d "metPfProjJetResUp" \
-d "metPfProjMuonEnDn" \
-d "metPfProjMuonEnUp" \
-d "metPfProjUnclEnDn" \
-d "metPfProjUnclEnUp" \
-d "metPfRaw" \
-d "metPfRawElecEnDn" \
-d "metPfRawElecEnUp" \
-d "metPfRawJetEnDn" \
-d "metPfRawJetEnUp" \
-d "metPfRawJetResDn" \
-d "metPfRawJetResUp" \
-d "metPfRawMuonEnDn" \
-d "metPfRawMuonEnUp" \
-d "metPfRawPhi" \
-d "metPfRawPhiElecEnDn" \
-d "metPfRawPhiElecEnUp" \
-d "metPfRawPhiJetEnDn" \
-d "metPfRawPhiJetEnUp" \
-d "metPfRawPhiJetResDn" \
-d "metPfRawPhiJetResUp" \
-d "metPfRawPhiMuonEnDn" \
-d "metPfRawPhiMuonEnUp" \
-d "metPfRawPhiUnclEnDn" \
-d "metPfRawPhiUnclEnUp" \
-d "metPfRawSumEt" \
-d "metPfRawUnclEnDn" \
-d "metPfRawUnclEnUp" \
-d "metPfType1ElecEnDn" \
-d "metPfType1ElecEnUp" \
-d "metPfType1JetEnDn" \
-d "metPfType1JetEnUp" \
-d "metPfType1JetResDn" \
-d "metPfType1JetResUp" \
-d "metPfType1MuonEnDn" \
-d "metPfType1MuonEnUp" \
-d "metPfType1SumEt" \
-d "metPfType1UnclEnDn" \
-d "metPfType1UnclEnUp" \
-d "mllg" \
-d "mllgid" \
-d "nGoodVtx" \
-d "nPhos" \
-d "nbjet" \
-d "nbjettche" \
-d "nextra" \
-d "njetid" \
-d "ootpum1" \
-d "ootpup1" \
-d "pchmet" \
-d "peaking" \
-d "pfmetMEtSig" \
-d "pfmetSignificance" \
-d "pho_HoE" \
-d "pho_chIso" \
-d "pho_hasPixelSeed" \
-d "pho_n_id" \
-d "pho_nhIso" \
-d "pho_passElecVeto" \
-d "pho_phIso" \
-d "pho_sietaieta" \
-d "predmet" \
-d "puAW" \
-d "puBW" \
-d "redmet" \
-d "softbjpb" \
-d "softcmvav2" \
-d "softcsvv2ivf" \
-d "softpfcsv" \
-d "softssvhb" \
-d "softssvhe" \
-d "softtche" \
-d "std_vector_photon_eta" \
-d "std_vector_photon_phi" \
-d "std_vector_photon_pt" \
-d "std_vector_photonid_eta" \
-d "std_vector_photonid_phi" \
-d "std_vector_photonid_pt" \
-d "std_vector_softMuD0" \
-d "std_vector_softMuDz" \
-d "std_vector_softMuEta" \
-d "std_vector_softMuIsTrackerMuon" \
-d "std_vector_softMuIso" \
-d "std_vector_softMuPhi" \
-d "std_vector_softMuPt" \
-d "std_vector_softMuTMLastStationAngTight" \
-d "std_vector_tau_eta" \
-d "std_vector_tau_phi" \
-d "std_vector_tau_pt" \
-d "std_vector_trackjet_eta" \
-d "std_vector_trackjet_phi" \
-d "std_vector_trackjet_probabilityB" \
-d "std_vector_trackjet_pt" \
-d "std_vector_trigger_L1max_prescale" \
-d "std_vector_trigger_L1min_prescale" \
-d "std_vector_trigger_prescale" \
-d "std_vector_trigger_special" \
-d "tightmu" \
-d "triggW" \
-d "trigger" \
-d "triggerFakeRate" \
-d "trpu" \
-d "nvtx" \
-d "bveto_ip" \
-d "run" \
-d "lumi" \
-d "std_vector_jet_puid" \
-d "std_vector_jet_softMuDz" \
-d "std_vector_electron_gsfndof" \
-d "std_vector_electron_dPhiSeedCalo" \
-d "std_vector_puppijet_eta" \
-d "std_vector_electron_expectedMissingTrackHits" \
-d "std_vector_puppijet_pt" \
-d "std_vector_electron_effectiveArea" \
-d "std_vector_jet_cCVSLjet" \
-d "std_vector_jet_softMuEta" \
-d "std_vector_jet_softMuD0" \
-d "std_vector_jet_QGlikelihood" \
-d "std_vector_muon_NumOfMatchedStations" \
-d "std_vector_electron_hcalPFClusterIso" \
-d "std_vector_jet_pfcsv" \
-d "std_vector_electron_fbrem" \
-d "std_vector_electron_hOverE" \
-d "std_vector_electron_scEta" \
-d "std_vector_electron_gsfchi2" \
-d "std_vector_muon_NValidHitsSATrk" \
-d "std_vector_jet_tche" \
-d "std_vector_muon_NValidHitsInTrk" \
-d "std_vector_jet_csvv2ivf" \
-d "std_vector_jet_tchp" \
-d "std_vector_puppijet_phi" \
-d "std_vector_jet_eta" \
-d "std_vector_muon_NValidFractInTrk" \
-d "std_vector_muon_Chi2LocalPos" \
-d "std_vector_jet_ssvhb" \
-d "std_vector_jet_cCVSBjet" \
-d "std_vector_jet_ssvhe" \
-d "std_vector_jet_softMuIso" \
-d "std_vector_jet_softMuPhi" \
-d "std_vector_electron_dPhiIn" \
-d "std_vector_electron_R9" \
-d "std_vector_muon_NValidPixelHitsInTrk" \
-d "std_vector_jet_phi" \
-d "std_vector_jet_mass" \
-d "std_vector_electron_expectedMissingOuterHits" \
-d "std_vector_electron_dEtaIn" \
-d "std_vector_muon_TrkKink" \
-d "std_vector_muon_NormChi2GTrk" \
-d "std_vector_electron_energy5x5" \
-d "std_vector_jet_NumberSoftMu" \
-d "std_vector_electron_dEtaSeedCalo" \
-d "std_vector_electron_ooEmooP" \
-d "std_vector_muon_NTkLayers" \
-d "std_vector_electron_dEtaClusterCalo" \
-d "std_vector_electron_gsfnormalizedchi2" \
-d "std_vector_electron_expectedMissingInnerHits" \
-d "std_vector_electron_passConversionVeto" \
-d "std_vector_electron_ecalPFClusterIso" \
-d "std_vector_electron_full5x5_sigmaIetaIeta" \
-d "std_vector_electron_full5x5R9" \
-d "std_vector_muon_SegCompatibilty" \
-d "std_vector_jet_softMuPt" \
-d "std_vector_electron_tripleChargeAgreement" \
-d "std_vector_electron_dPhiClusterCalo" \
-d "std_vector_electron_seedEnergy" \
-d "metFilter" \
-d "jetpt1" \
-d "jetpt2" \
-d "jeteta1" \
-d "jeteta2" \
-d "jetphi1" \
-d "jetphi2" \
-d "jetmass1" \
-d "jetmass2" \
-d "jettche1" \
-d "jettche2" \
-d "std_vector_lepton_chargedHadronIso" \
-d "std_vector_lepton_photonIso" \
-d "std_vector_lepton_closejet_PartonFlavour" \
-d "std_vector_lepton_closejet_pt" \
-d "std_vector_lepton_neutralHadronIso" \
-d "std_vector_lepton_eleIdMedium" \
-d "std_vector_lepton_chargedParticleIso" \
-d "std_vector_lepton_closejet_eta" \
-d "std_vector_lepton_eleIdLoose" \
-d "std_vector_lepton_dz" \
-d "std_vector_lepton_eleIdVeto" \
-d "std_vector_lepton_isLooseLepton" \
-d "std_vector_lepton_sumPUPt" \
-d "std_vector_lepton_eta" \
-d "std_vector_lepton_isMediumMuon" \
-d "std_vector_lepton_PfIsoDeltaBeta" \
-d "std_vector_lepton_closejet_phi" \
-d "std_vector_lepton_trackIso" \
-d "std_vector_lepton_isWgsLepton" \
-d "std_vector_lepton_phi" \
-d "std_vector_lepton_SIP3D" \
-d "std_vector_lepton_isTightLepton" \
-d "std_vector_lepton_ch" \
-d "std_vector_lepton_closejet_drlj" \
-d "std_vector_lepton_eleIdTight" \
-d "std_vector_lepton_d0" \
-d "std_vector_lepton_isTightMuon" \
-d "pTWW" \
-d "mcoll" \
-d "m2ljj30" \
-d "mcollWW" \
-d "dphilep2jet2" \
-d "dphilep1jet2" \
-d "dphilep1jet1" \
-d "mjj" \
-d "mllThird" \
-d "mllOneThree" \
-d "dphilljetjet" \
-d "drllTwoThree" \
-d "dphijet2met" \
-d "dphijjmet" \
-d "uperp" \
-d "vht_phi" \
-d "dphilljet_cut" \
-d "m2ljj20" \
-d "dphijet1met_cut" \
-d "channel" \
-d "jetpt1_cut" \
-d "vht_pt" \
-d "upara" \
-d "dphijet1met" \
-d "dphilljet" \
-d "dphiltkmet" \
-d "choiMass" \
-d "projpfmet" \
-d "mTi" \
-d "dphilep2jet1" \
-d "ht" \
-d "mR" \
-d "drllOneThree" \
-d "mTe" \
-d "PfMetDivSumMet" \
-d "mllTwoThree" \
-d "detajj" \
-d "recoil" \
-d "yll" \
-d "projtkmet" \
-d "njet_3l" \
-d "mtwww" \
-d "dphilmet1_wh3l" \
-d "pt1" \
-d "ptlll" \
-d "dphilmet3_wh3l" \
-d "mtw1_wh3l" \
-d "minmtw_wh3l" \
-d "flagOSSF" \
-d "pfmet" \
-d "dphilllmet" \
-d "mllmin3l" \
-d "phi3" \
-d "phi2" \
-d "phi1" \
-d "nbjet_3l" \
-d "pTWWW" \
-d "chlll" \
-d "drllmin3l" \
-d "pt3" \
-d "pt2" \
-d "mtw2_wh3l" \
-d "eta1" \
-d "eta2" \
-d "eta3" \
-d "zveto_3l" \
-d "mindphi_lmet" \
-d "mlll" \
-d "dphilmet2_wh3l" \
-d "mtw3_wh3l" \
-d "z0DeltaR_zh4l" \
-d "lep4Mt_zh4l" \
-d "chllll_zh4l" \
-d "zbMass_zh4l" \
-d "z0Mass_zh4l" \
-d "z0DeltaPhi_zh4l" \
-d "zaDeltaPhi_zh4l" \
-d "z1Mass_zh4l" \
-d "z1DeltaPhi_zh4l" \
-d "lep2Mt_zh4l" \
-d "lep1Mt_zh4l" \
-d "z1DeltaR_zh4l" \
-d "minDeltaPhi_zh4l" \
-d "mllll_zh4l" \
-d "flagZ1SF_zh4l" \
-d "zbDeltaPhi_zh4l" \
-d "zaMass_zh4l" \
-d "minMt_zh4l" \
-d "z1Mt_zh4l" \
-d "lep3Mt_zh4l" \
-d "pfmetPhi_zh4l" \
-d "zaDeltaR_zh4l" \
-d "zbDeltaR_zh4l" \
$SAMPLE \
/afs/cern.ch/user/n/ntrevisa/work/CMSSW_8_0_5/src/AnalysisCMS/minitrees/$NUISANCE/MonoH/