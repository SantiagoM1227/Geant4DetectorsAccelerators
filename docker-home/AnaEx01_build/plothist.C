void plothist(void){
    TFile *_file0 =  TFile::Open("AnaEx01.root");
    _file0->cd("histo");

    TH1F* h_e = (TH1F*)gDirectory->Get("E2e");
    TH1F* h_p = (TH1F*)gDirectory->Get("E2p");

    TCanvas* c1 = new TCanvas("c1", "Secondary e-", 800, 600);
    h_e->SetLineColor(kBlue);
    h_e->SetLineWidth(2);
    h_e->SetTitle("Edep in 5X0 (Secondary e^{-});Energy[MeV];Counts");
    h_e->Draw();

    TCanvas* c2 = new TCanvas("c2", "Secondary gamma", 800, 600);
    h_p->SetLineColor(kRed);
    h_p->SetLineWidth(2);
    h_p->SetTitle("Edep in 5X0 (Secondary #gamma);Energy[MeV];Counts");
    h_p->Draw();
}