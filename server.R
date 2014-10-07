# Install the necessary packages
  if (!require(shiny)) install.packages("shiny"); library(shiny)
  if (!require(googleVis)) install.packages("googleVis"); library(googleVis)
  if (!require(shinyapps)) install.packages("shinyapps"); library(shinyapps)

shinyServer(function(input, output) {  
  
  output$hypertension_bubbles <- renderGvis({
    isolate({FocusBubbles("hypertension")})
  })
  output$hypertension_table <- renderGvis({
    isolate({FocusTable("hypertension")})
  })
  output$hypertension_geo <- renderGvis({
    isolate({Geo10("hypertension")})
  })
  output$hypertension_atyphi <- renderGvis({
    isolate({AtypHigh("hypertension")})
  })
  output$hypertension_atyplo <- renderGvis({
    isolate({AtypLow("hypertension")})
  })  
  output$hypertension_vol <- renderGvis({
    isolate({Volatile5("hypertension")})
  })  

  output$arteriosclerosis_bubbles <- renderGvis({
    isolate({FocusBubbles("arteriosclerosis")})
  })
  output$arteriosclerosis_table <- renderGvis({
    isolate({FocusTable("arteriosclerosis")})
  })
  output$arteriosclerosis_geo <- renderGvis({
    isolate({Geo10("arteriosclerosis")})
  })
  output$arteriosclerosis_atyphi <- renderGvis({
    isolate({AtypHigh("arteriosclerosis")})
  })
  output$arteriosclerosis_atyplo <- renderGvis({
    isolate({AtypLow("arteriosclerosis")})
  })  
  output$arteriosclerosis_vol <- renderGvis({
    isolate({Volatile5("arteriosclerosis")})
  }) 
  
  output$prostate_cancer_bubbles <- renderGvis({
    isolate({FocusBubbles("prostate_cancer")})
  })
  output$prostate_cancer_table <- renderGvis({
    isolate({FocusTable("prostate_cancer")})
  })
  output$prostate_cancer_geo <- renderGvis({
    isolate({Geo10("prostate_cancer")})
  })
  output$prostate_cancer_atyphi <- renderGvis({
    isolate({AtypHigh("prostate_cancer")})
  })
  output$prostate_cancer_atyplo <- renderGvis({
    isolate({AtypLow("prostate_cancer")})
  })  
  output$prostate_cancer_vol <- renderGvis({
    isolate({Volatile5("prostate_cancer")})
  })  
  
  output$asthma_bubbles <- renderGvis({
    isolate({FocusBubbles("asthma")})
  })
  output$asthma_table <- renderGvis({
    isolate({FocusTable("asthma")})
  })
  output$asthma_geo <- renderGvis({
    isolate({Geo10("asthma")})
  })
  output$asthma_atyphi <- renderGvis({
    isolate({AtypHigh("asthma")})
  })
  output$asthma_atyplo <- renderGvis({
    isolate({AtypLow("asthma")})
  })  
  output$asthma_vol <- renderGvis({
    isolate({Volatile5("asthma")})
  })  
  
  output$alzheimer_bubbles <- renderGvis({
    isolate({FocusBubbles("alzheimer")})
  })
  output$alzheimer_table <- renderGvis({
    isolate({FocusTable("alzheimer")})
  })
  output$alzheimer_geo <- renderGvis({
    isolate({Geo10("alzheimer")})
  })
  output$alzheimer_atyphi <- renderGvis({
    isolate({AtypHigh("alzheimer")})
  })
  output$alzheimer_atyplo <- renderGvis({
    isolate({AtypLow("alzheimer")})
  })  
  output$alzheimer_vol <- renderGvis({
    isolate({Volatile5("alzheimer")})
  })  
  
})
