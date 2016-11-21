{
  unsigned int rootVersion = gROOT->GetVersionInt();

  if(rootVersion >= 60400)
    gStyle->SetPalette(kBird);
  else
    gStyle->SetPalette(54);

  gROOT->SetStyle("Plain");
  
  //gSystem->Load("libRooFit");
  //cout << "RooFit loaded." << endl;

  TString delphes = getenv("LD_LIBRARY_PATH");
  delphes += TString(":") + getenv("LIBRARY_PATH");
  if(delphes.Contains("Delphes")){
    gSystem->Load("libDelphes");
    cout << "Delphes loaded." << endl;
  }

  TString cmsswbase = getenv("CMSSW_BASE");
  if(cmsswbase.Length() > 0){
    cout << "CMS environment: " << cmsswbase << endl;
    gSystem->Load("libFWCoreFWLite.so");
    //AutoLibraryLoader::enable();
    gSystem->Load("libDataFormatsFWLite.so");
	gSystem->Load("libDataFormatsPatCandidates.so");
    cout << "FWLite loaded." << endl;
  }

}
