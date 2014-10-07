shinyUI(navbarPage("Visualizing U.S. Clinical Trials", 
                   tabPanel("Hypertension",
                            
                            tags$h3("Bubble Chart of U.S. Hypertension Clinical Trials"),
                            tags$h4("By County Population, People/Trial, and Volatility"),
                            htmlOutput("hypertension_bubbles"),
                            htmlOutput("hypertension_table"),
                                                        
                            tags$h3("Top 10 U.S. Counties for Hypertension Trials"),
                            htmlOutput("hypertension_geo"),
                            
                            tags$h3("5 Most Trialed Counties in 2013 Based On Population"),
                            htmlOutput("hypertension_atyphi"),
                            
                            tags$h3("5 Least Trialed Counties in 2013 Based On Population"),
                            htmlOutput("hypertension_atyplo"),
                            
                            tags$h3("5 Most Volatile Counties For Hypertension Clinical Trials"),
                            htmlOutput("hypertension_vol"),
                           
                            tags$hr(), 
                            tags$h4("Attribution and Credit"),
                            tags$p(
                              tags$a(href="www.clinicaltrials.gov","ClinicalTrials.gov")," for all trial data; ",
                              tags$a(href="geonames.org","geonames.org"),
                              " for geocoding services; ",
                              tags$a(href="census.gov","census.gov"), 
                              " for U.S. county population data; Charting services: ",
                              tags$a(href="https://github.com/mages/googleVis","googleVis-0.5.5")," | ",
                              tags$a(href="https://developers.google.com/terms/","Google Terms of Use")," | ",
                              tags$a(href="https://google-developers.appspot.com/chart/interactive/docs/gallery","Documentation and Data Policy"),"; ",
                              tags$a(href="https://www.shinyapps.io","ShinyApps")," and R for providing the tools."
                            ),
                            tags$h4("Authorship"),
                            tags$p(
                              tags$a(href="http://gary-chung.com","Gary Chung")," | ",
                              tags$a(href="https://github.com/gunkadoodah/CTgov","Git")
                            ),
                            tags$p("Let me know if you'd like another health condition plotted.")                            
                            ),
                   
                   tabPanel("Arteriosclerosis",
                            
                            tags$h3("Bubble Chart of U.S. Arteriosclerosis Clinical Trials"),
                            tags$h4("By County Population, People/Trial, and Volatility"),
                            htmlOutput("arteriosclerosis_bubbles"),
                            htmlOutput("arteriosclerosis_table"),
                            
                            tags$h3("Top 10 U.S. Counties for Arteriosclerosis Trials"),
                            htmlOutput("arteriosclerosis_geo"),
                            
                            tags$h3("5 Most Trialed Counties in 2013 Based On Population"),
                            htmlOutput("arteriosclerosis_atyphi"),
                            
                            tags$h3("5 Least Trialed Counties in 2013 Based On Population"),
                            htmlOutput("arteriosclerosis_atyplo"),
                            
                            tags$h3("5 Most Volatile Counties For Arteriosclerosis Clinical Trials"),
                            htmlOutput("arteriosclerosis_vol"),
                            
                            tags$hr(), 
                            tags$h4("Attribution and Credit"),
                            tags$p(
                              tags$a(href="www.clinicaltrials.gov","ClinicalTrials.gov")," for all trial data; ",
                              tags$a(href="geonames.org","geonames.org"),
                              " for geocoding services; ",
                              tags$a(href="census.gov","census.gov"), 
                              " for U.S. county population data; Charting services: ",
                              tags$a(href="https://github.com/mages/googleVis","googleVis-0.5.5")," | ",
                              tags$a(href="https://developers.google.com/terms/","Google Terms of Use")," | ",
                              tags$a(href="https://google-developers.appspot.com/chart/interactive/docs/gallery","Documentation and Data Policy"),"; ",
                              tags$a(href="https://www.shinyapps.io","ShinyApps")," and R for providing the tools."
                            ),
                            tags$h4("Authorship"),
                            tags$p(
                              tags$a(href="http://gary-chung.com","Gary Chung")," | ",
                              tags$a(href="https://github.com/gunkadoodah/CTgov","Git")
                            ),
                            tags$p("Let me know if you'd like another health condition plotted.")                            
                            ),
                   
                   tabPanel("Prostate Cancer",
                            
                            tags$h3("Bubble Chart of U.S. Prostate Cancer Clinical Trials"),
                            tags$h4("By County Population, People/Trial, and Volatility"),
                            htmlOutput("prostate_cancer_bubbles"),
                            htmlOutput("prostate_cancer_table"),
                            
                            tags$h3("Top 10 U.S. Counties for Prostate Cancer Trials"),
                            htmlOutput("prostate_cancer_geo"),
                            
                            tags$h3("5 Most Trialed Counties in 2013 Based On Population"),
                            htmlOutput("prostate_cancer_atyphi"),
                            
                            tags$h3("5 Least Trialed Counties in 2013 Based On Population"),
                            htmlOutput("prostate_cancer_atyplo"),
                            
                            tags$h3("5 Most Volatile Counties For Prostate Cancer Clinical Trials"),
                            htmlOutput("prostate_cancer_vol"),
                            
                            tags$hr(), 
                            tags$h4("Attribution and Credit"),
                            tags$p(
                              tags$a(href="www.clinicaltrials.gov","ClinicalTrials.gov")," for all trial data; ",
                              tags$a(href="geonames.org","geonames.org"),
                              " for geocoding services; ",
                              tags$a(href="census.gov","census.gov"), 
                              " for U.S. county population data; Charting services: ",
                              tags$a(href="https://github.com/mages/googleVis","googleVis-0.5.5")," | ",
                              tags$a(href="https://developers.google.com/terms/","Google Terms of Use")," | ",
                              tags$a(href="https://google-developers.appspot.com/chart/interactive/docs/gallery","Documentation and Data Policy"),"; ",
                              tags$a(href="https://www.shinyapps.io","ShinyApps")," and R for providing the tools."
                            ),
                            tags$h4("Authorship"),
                            tags$p(
                              tags$a(href="http://gary-chung.com","Gary Chung")," | ",
                              tags$a(href="https://github.com/gunkadoodah/CTgov","Git")
                            ),
                            tags$p("Let me know if you'd like another health condition plotted.")                            
                   ),
                   
                   tabPanel("Asthma",
                            
                            tags$h3("Bubble Chart of U.S. Asthma Clinical Trials"),
                            tags$h4("By County Population, People/Trial, and Volatility"),
                            htmlOutput("asthma_bubbles"),
                            htmlOutput("asthma_table"),
                            
                            tags$h3("Top 10 U.S. Counties for Asthma Trials"),
                            htmlOutput("asthma_geo"),
                            
                            tags$h3("5 Most Trialed Counties in 2013 Based On Population"),
                            htmlOutput("asthma_atyphi"),
                            
                            tags$h3("5 Least Trialed Counties in 2013 Based On Population"),
                            htmlOutput("asthma_atyplo"),
                            
                            tags$h3("5 Most Volatile Counties For Asthma Clinical Trials"),
                            htmlOutput("asthma_vol"),
                            
                            tags$hr(), 
                            tags$h4("Attribution and Credit"),
                            tags$p(
                              tags$a(href="www.clinicaltrials.gov","ClinicalTrials.gov")," for all trial data; ",
                              tags$a(href="geonames.org","geonames.org"),
                              " for geocoding services; ",
                              tags$a(href="census.gov","census.gov"), 
                              " for U.S. county population data; Charting services: ",
                              tags$a(href="https://github.com/mages/googleVis","googleVis-0.5.5")," | ",
                              tags$a(href="https://developers.google.com/terms/","Google Terms of Use")," | ",
                              tags$a(href="https://google-developers.appspot.com/chart/interactive/docs/gallery","Documentation and Data Policy"),"; ",
                              tags$a(href="https://www.shinyapps.io","ShinyApps")," and R for providing the tools."
                            ),
                            tags$h4("Authorship"),
                            tags$p(
                              tags$a(href="http://gary-chung.com","Gary Chung")," | ",
                              tags$a(href="https://github.com/gunkadoodah/CTgov","Git")
                            ),
                            tags$p("Let me know if you'd like another health condition plotted.")                            
                            
                            ),
                   tabPanel("Alzheimer's",
                            
                            tags$h3("Bubble Chart of U.S. Alzheimer's Clinical Trials"),
                            tags$h4("By County Population, People/Trial, and Volatility"),
                            htmlOutput("alzheimer_bubbles"),
                            htmlOutput("alzheimer_table"),
                            
                            tags$h3("Top 10 U.S. Counties for Alzheimer's Trials"),
                            htmlOutput("alzheimer_geo"),
                            
                            tags$h3("5 Most Trialed Counties in 2013 Based On Population"),
                            htmlOutput("alzheimer_atyphi"),
                            
                            tags$h3("5 Least Trialed Counties in 2013 Based On Population"),
                            htmlOutput("alzheimer_atyplo"),
                            
                            tags$h3("5 Most Volatile Counties For Alzheimer's Clinical Trials"),
                            htmlOutput("alzheimer_vol"),
                            
                            tags$hr(), 
                            tags$h4("Attribution and Credit"),
                            tags$p(
                              tags$a(href="www.clinicaltrials.gov","ClinicalTrials.gov")," for all trial data; ",
                              tags$a(href="geonames.org","geonames.org"),
                              " for geocoding services; ",
                              tags$a(href="census.gov","census.gov"), 
                              " for U.S. county population data; Charting services: ",
                              tags$a(href="https://github.com/mages/googleVis","googleVis-0.5.5")," | ",
                              tags$a(href="https://developers.google.com/terms/","Google Terms of Use")," | ",
                              tags$a(href="https://google-developers.appspot.com/chart/interactive/docs/gallery","Documentation and Data Policy"),"; ",
                              tags$a(href="https://www.shinyapps.io","ShinyApps")," and R for providing the tools."
                            ),
                            tags$h4("Authorship"),
                            tags$p(
                              tags$a(href="http://gary-chung.com","Gary Chung")," | ",
                              tags$a(href="https://github.com/gunkadoodah/CTgov","Git")
                            ),
                            tags$p("Let me know if you'd like another health condition plotted.")                            
                   )
))