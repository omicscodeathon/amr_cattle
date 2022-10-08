#Dependencies
install.packages("readr")
library(readr)
library(dplyr)
install.packages("lessR")
library(lessR)


#converting tsv to csv for easy manipulation
#Kenya
sed 's/'\t'/,/g' $ke_tsv > $Ke_data
#Tanzania
sed 's/'\t'/,/g' $tz_tsv > $Tz_data
#Uganda
sed 's/'\t'/,/g' $ug_tsv > $Ug_data

#Data upload 
Ke_data<-read.csv("Ke_data.csv",header = TRUE)
Ke_data$COUNTRY <- "Kenya" #adding a new column called country and filling with Kenya
Ke_data #confirm that the column has been added and the country name

Ug_data<-read.csv("Ug_data.csv",header = TRUE)
Ug_data$COUNTRY <- "Uganda"
Ug_data 

Tz_data<-read.csv("Tz_data.csv",header = TRUE)
Tz_data$COUNTRY <- "Tanzania"  
Tz_data

#data visualization

#Pie Chart
PieChart(RESISTANCE ,data=Ke_data)
PieChart(RESISTANCE ,data=Ug_data)
PieChart(RESISTANCE ,data=Tz_data)

#Bar Chart

BarChart(RESISTANCE,horiz=TRUE ,data=Ke_data, by = SEQUENCE,stack100 = TRUE, xaxt = 'n', ylab = "% OF RESISTANCE IN CONTIGS \n KENYA")
#xaxt = 'n' removes the scale on the x-axis

BarChart(RESISTANCE,horiz=TRUE ,data=Tz_data, by = SEQUENCE,stack100 = TRUE, xaxt = 'n', ylab = "% OF RESISTANCE IN CONTIGS \n TANZANIA")

BarChart(RESISTANCE,horiz=TRUE ,data=Ug_data, by = SEQUENCE,stack100 = TRUE, xaxt = 'n', ylab = "% OF RESISTANCE IN CONTIGS \n UGANDA")


#Removing columns that we don't need from the datasets
Ke_data <- Ke_data[, !(colnames(Ke_data) %in% c("X.FILE", "START", "END", "STRAND", "COVERAGE", "COVERAGE_MAP","GAPS","X.COVERAGE","X.IDENTITY","DATABASE","ACCESSION" ))]
Ug_data <- Ug_data[, !(colnames(Ug_data) %in% c("X.FILE", "START", "END", "STRAND", "COVERAGE", "COVERAGE_MAP","GAPS","X.COVERAGE","X.IDENTITY","DATABASE","ACCESSION" ))]
Tz_data <- Tz_data[, !(colnames(Tz_data) %in% c("X.FILE", "START", "END", "STRAND", "COVERAGE", "COVERAGE_MAP","GAPS","X.COVERAGE","X.IDENTITY","DATABASE","ACCESSION" ))]

####
#Merging te three datasets
combined <- rbind(Ke_data, Ug_data, Tz_data)

#If the headers appear in the combined dataset use the code below to remove them
#combineddata  <- combined[-c(78, 125, 227, 266, 201), ] #Removing headers in the data

#plotting a combined bar graph
BarChart(RESISTANCE,horiz=TRUE ,data=combineddata, by = COUNTRY,stack100 = TRUE, xaxt = 'n', ylab = "% OF RESISTANCE \n IN DIFFERENT COUNTRIES ")

