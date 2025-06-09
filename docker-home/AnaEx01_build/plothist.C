void plothist(void){
    TFile *_file0 = TFile::Open("AnaEx01.root");

    _file0->cd("histo");

    // Retrieve histograms for secondary electrons and photons
    TH1F* h_e = (TH1F*)gDirectory->Get("E2e");
    TH1F* h_p = (TH1F*)gDirectory->Get("E2p");
    TH2F* h_le = (TH2F*)gDirectory->Get("L2e");
    TH2F* h_lp = (TH2F*)gDirectory->Get("L2p");

    // Canvas for secondary electrons
    TCanvas* c1 = new TCanvas("c1", "Secondary e-", 800, 600);
    h_e->SetLineColor(kBlue);
    h_e->SetLineWidth(2);
    h_e->SetTitle("Edep in 5X0 (Secondary e^{-});Energy[MeV];Counts");
    h_e->Draw();
    c1->SaveAs("Secondary_electron_Edep.png");

    // Canvas for secondary photons
    TCanvas* c2 = new TCanvas("c2", "Secondary gamma", 800, 600);
    h_p->SetLineColor(kRed);
    h_p->SetLineWidth(2);
    h_p->SetTitle("Edep in 5X0 (Secondary #gamma);Energy[MeV];Counts");
    h_p->Draw();
    c2->SaveAs("Secondary_gamma_Edep.png");

    // Canvas for Ldep vs Edep for secondary electrons
    TCanvas* c3 = new TCanvas("c3", "Ldep vs Edep (Secondary e-)", 800, 600);
    h_le->SetLineColor(kBlue);
    h_le->SetLineWidth(2);
    h_le->SetTitle("Ldep vs Edep (Secondary e^{-});Track Length [mm];Energy [keV]");
    h_le->Draw("COLZ");
    c3->SaveAs("Secondary_electron_Ldep_vs_Edep.png");

    // Canvas for Ldep vs Edep for secondary photons
    TCanvas* c4 = new TCanvas("c4", "Ldep vs Edep (Secondary gamma)", 800, 600);
    h_lp->SetLineColor(kRed);
    h_lp->SetLineWidth(2);
    h_lp->SetTitle("Ldep vs Edep (Secondary #gamma);Track Length [mm];Energy [keV]");
    h_lp->Draw("COLZ");
    c4->SaveAs("Secondary_gamma_Ldep_vs_Edep.png");
}