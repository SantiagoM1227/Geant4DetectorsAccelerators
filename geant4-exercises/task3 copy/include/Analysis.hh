#ifndef ANALYSIS_HH
#define ANALYSIS_HH
 
// Choose ONE:
//#define USE_ROOT
//#define USE_CSV
#define USE_XML

#ifdef USE_ROOT
  #include "G4RootAnalysisManager.hh"
  using G4AnalysisManager = G4RootAnalysisManager;
#elif defined(USE_CSV)
  #include "G4CsvAnalysisManager.hh"
  using G4AnalysisManager = G4CsvAnalysisManager;
#elif defined(USE_XML)
  #include "G4XmlAnalysisManager.hh"
  using G4AnalysisManager = G4XmlAnalysisManager;
#else
  #error "No analysis backend selected"
#endif

#endif

