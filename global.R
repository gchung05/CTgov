# PLOTS
##############################

if (!require(googleVis)) install.packages("googleVis"); library(googleVis)
if (!require(plyr)) install.packages("plyr"); library(plyr)
if (!require(zoo)) install.packages("zoo"); library(zoo)

# A bubble chart
FocusBubbles <- function(query) {
  wdHold <- getwd()
  theQuery <- query
  dataRoot <- paste(getwd(),"/Data",sep="")
  setwd(file.path(dataRoot, theQuery))
  load("Bubbles.rda")
  setwd(wdHold)
  gvisBubbleChart(Bubbles, idvar="CountyState", 
                  xvar="Population", yvar="Trials",
                  sizevar="Volatility", colorvar="PPT",
                  options=list( vAxis="{minValue:0, title:'Average Number of Trials in 2013'}",
                                # title="2013 U.S. Clinical Trials by County",
                                hAxis="{title: 'County Population in 2013'}",
                                bubble="{textStyle: {fontSize: 11}}",
                                #colorAxis="{colors: ['yellow', 'red']}",
                                colors="['#FFCC00','#ff9900','#ff6600','#FF3300']",
                                height=500))
}

# Table of the Focus Counties
FocusTable <- function(query) {
  wdHold <- getwd()
  theQuery <- query
  dataRoot <- paste(getwd(),"/Data",sep="")
  setwd(file.path(dataRoot, theQuery))
  load("Bubbles.rda")
  setwd(wdHold)
  theTable <- rename(Bubbles[,c('County, State','Population','Trials','perTrial','Volatility','Largest City')],
                     c("Trials"="2013 Average Trials/Month","Largest City"="Largest City in County",
                       "Population"="2013 Population","perTrial"="People Per Trial"))
  gvisTable(theTable, 
            formats=list("2013 Population"="#,###","People Per Trial"="#,###"))
}

# A line chart of five most volatile counties
Volatile5 <- function(query) {
  wdHold <- getwd()
  theQuery <- query
  dataRoot <- paste(getwd(),"/Data",sep="")
  setwd(file.path(dataRoot, theQuery))
  load("CountyBubble.rda")
  setwd(wdHold)
  top5 <- as.data.frame(cbind(County=subset(CountyBubble,RankVol<=5)$"County, State"))
  top5 <- merge(as.data.frame(top5),byCountyByMonth,by="County",all.x=T)
  top5$yearMon <- as.yearmon(top5$Month)
  gvisAnnotationChart(top5, 
                      datevar="yearMon",
                      numvar="Trials", 
                      idvar="County",
                      options=list(
                        vAxis="{minValue:0, title:'Volatility (Standard Deviation of Trials 2009-2013)'}",
                        title="Top 5 Most Volatile Counties",
                        #hAxis="{title: 'County Population in 2013'}",
                        dateFormat='MMMM yyyy',
                        height=700, displayZoomButtons=FALSE,
                        fill=10, displayExactValues=TRUE)
  )
}

# Tables Listing Counties Atypically High or Low # of Trials, Adjusted by County Population
AtypHigh <- function(query) {
  wdHold <- getwd()
  theQuery <- query
  dataRoot <- paste(getwd(),"/Data",sep="")
  setwd(file.path(dataRoot, theQuery))
  load("CountyBubble.rda")
  setwd(wdHold)
  
  top5 <- subset(CountyBubble,rank(-CountyBubble$Resids)<=5)
  theTable <- rename(top5[,c('County, State','Population','Trials','perTrial','Volatility','Largest City')],
                     c("Trials"="2013 Average Trials/Month","Largest City"="Largest City in County",
                       "Population"="2013 Population","perTrial"="People Per Trial"))
  gvisTable(theTable, 
            formats=list("2013 Population"="#,###","People Per Trial"="#,###"))
}
AtypLow <- function(query) {
  wdHold <- getwd()
  theQuery <- query
  dataRoot <- paste(getwd(),"/Data",sep="")
  setwd(file.path(dataRoot, theQuery))
  load("CountyBubble.rda")
  setwd(wdHold)
  
  bot5 <- subset(CountyBubble,rank(CountyBubble$Resids)<=5)
  theTable <- rename(bot5[,c('County, State','Population','Trials','perTrial','Volatility','Largest City')],
                     c("Trials"="2013 Average Trials/Month","Largest City"="Largest City in County",
                       "Population"="2013 Population","perTrial"="People Per Trial"))
  gvisTable(theTable, 
            formats=list("2013 Population"="#,###","People Per Trial"="#,###"))
}

# A Geo Chart of the Top 10 Most Trialed Counties
Geo10 <- function(query) {
  wdHold <- getwd()
  theQuery <- query
  dataRoot <- paste(getwd(),"/Data",sep="")
  setwd(file.path(dataRoot, theQuery))
  load("CountyBubble.rda")
  setwd(wdHold)
  
  top10 <- subset(CountyBubble,RankTrials<=10)
  top10$hover <- paste(top10$County," County Pop: ",top10$Population,", Largest City: ",top10$"Largest City",sep="")
  gvisGeoChart(top10, "County, State", "Trials", hovervar="hover",
               options=list(region="US", 
                            displayMode="markers", 
                            resolution="provinces",
                            width=600, height=400))
}

