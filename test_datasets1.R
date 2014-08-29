
#Playing with dummy data downloaded from https://raw.githubusercontent.com/dhavide/MedicalData/master/MedicalData.txt

MedicalData <- read.delim("~/R/datasciencecoursera/MedicalData.txt", stringsAsFactors=FALSE,na.strings="N/A")
MedicalData["Pulse"]<-as.numeric(MedicalData$Pulse)
MedicalData["Height"]<-as.numeric(MedicalData$Height)
aggregate( Pulse ~ Sex, MedicalData, mean )
aggregate( Pulse ~ Sex, MedicalData, hist )

MDbS<-split(MedicalData,MedicalData$Sex)

mean(MDbS$M$Height)
hist(MDbS$M$Height)