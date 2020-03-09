install.packages("DescTools")
install.packages("ggplot2")

library(DescTools)
library(ggplot2)

setwd("C:/Users/lkast1/Google Drive/PhD/2.Analysis/1.Quantitative synthesis/5. Data Analysis/Paper 1 - meta-averages/V3/BE-TU-Meta-analysis")
#read in data

raw_elasticites<-read.csv(file="Raw_elasticities.csv")

#subsetting for indictaors

citation("ggplot2")

I1_ActivityDensity<- raw_elasticites[ which(raw_elasticites$IV_Standardised=='Act_Den'),]
I2_CommercialDensity<- raw_elasticites[ which(raw_elasticites$IV_Standardised=='Comm_Den'),]
I3_PopulationDensity<- raw_elasticites[ which(raw_elasticites$IV_Standardised=='Pop_Den'),]
I4_PedestrianConnectivity<- raw_elasticites[ which(raw_elasticites$IV_Standardised=='Connectivity'),]
I5_JobsHousingBalance<- raw_elasticites[ which(raw_elasticites$IV_Standardised=='Balance'),]
I6_HousingDiversity<- raw_elasticites[ which(raw_elasticites$IV_Standardised=='Mix_House'),]
I7_EmploymentDensity<- raw_elasticites[ which(raw_elasticites$IV_Standardised=='Emp_Den'),]
I8_LandUseMix<- raw_elasticites[ which(raw_elasticites$IV_Standardised=='Mix_Land'),]
I9_Safety<- raw_elasticites[ which(raw_elasticites$IV_Standardised=='Safety'),]
I10_Amenity<- raw_elasticites[ which(raw_elasticites$IV_Standardised=='Amenity'),]
I11_LocalAccess<- raw_elasticites[ which(raw_elasticites$IV_Standardised=='Local_Access'),]
I12_Centrality<- raw_elasticites[ which(raw_elasticites$IV_Standardised=='Centrality'),]


#Boxplot of Built environment
oldpar<-par() #store old graphical parameters
par(oldpar)
par(mfrow = c(12, 1))
par(oma=c(2.5,1,0.5,0.5)) #sets outside margins: b, l, t, r
par(mar=c(0, 0, 0, 0))#sets plot margins
par(bty = 'n') #sets outside margins: b, l, t, r


boxplot(I3_PopulationDensity$E_mag,
        horizontal=TRUE,
        las=1, 
        ylim = c(-0.5,1),
        boxwex = 1,
        whisklty = 1,
        staplety = 0,
        outpch = 16,
        col = "#40557C",
        outcol="#40557C",
        outcex = 1.5,
        axes = FALSE)
boxplot(I1_ActivityDensity$E_mag,
        horizontal=TRUE,
        las=1, 
        ylim = c(-0.5,1),
        boxwex = 1,
        whisklty = 1,
        staplety = 0,
        outpch = 16,
        col = "#40557C",
        outcol="#40557C",
        outcex = 1.5,
        axes = FALSE)
boxplot(I7_EmploymentDensity$E_mag,
        horizontal=TRUE,
        las=1, 
        ylim = c(-0.5,1),
        boxwex = 1,
        whisklty = 1,
        staplety = 0,
        outpch = 16,
        col = "#40557C",
        outcol="#40557C",
        outcex = 1.5,
        axes = FALSE)
boxplot(I10_Amenity$E_mag,
        horizontal=TRUE,
        las=1, 
        ylim = c(-0.5,1),
        boxwex = 1,
        whisklty =Comercial  1,
        staplety = 0,
        outpch = 16,
        col = "#D9CDD7",
        outcol="#D9CDD7",
        outcex = 1.5,
        axes = FALSE)
boxplot(I2_CommercialDensity$E_mag,
        horizontal=TRUE,
        las=1, 
        ylim = c(-0.5,1),
        boxwex = 1,
        whisklty = 1,
        staplety = 0,
        outpch = 16,Local c
        col = "#40557C",
        outcol="#40557C",
        outcex = 1.5,
        axes = FALSE)
boxplot(I4_PedestrianConnectivity$E_mag,
        horizontal=TRUE,
        las=1, 
        ylim = c(-0.5,1),
        boxwex = 1,
        whisklty = 1,
        staplety = 0,
        outpch = 16,
        col = "#D9CDD7",
        outcol="#D9CDD7",
        outcex = 1.5,
        axes = FALSE)
boxplot(I11_LocalAccess$E_mag,
        horizontal=TRUE,
        las=1, 
        ylim = c(-0.5,1),
        boxwex = 1,
        whisklty = 1,
        staplety = 0,
        outpch = 16,
        col = "#E8B65A",
        outcol="#E8B65A",
        outcex = 1.5,
        axes = FALSE)
boxplot(I5_JobsHousingBalance$E_mag,
        horizontal=TRUE,
        las=1,
        ylim = c(-0.5,1),
        boxwex = 1,
        whisklty = 1,
        staplety = 0,
        outpch = 16,
        col = "#4E755A",
        outcol="#4E755A",
        outcex = 1.5,
        axes = FALSE)
boxplot(I9_Safety$E_mag,
        horizontal=TRUE,
        las=1, 
        ylim = c(-0.5,1),
        boxwex = 1,
        whisklty = 1,
        staplety = 0,
        outpch = 16,
        col = "#D9CDD7",
        outcol="#D9CDD7",
        outcex = 1.5,
        axes = FALSE)
boxplot(I8_LandUseMix$E_mag,
        horizontal=TRUE,
        las=1, 
        ylim = c(-0.5,1),
        boxwex = 1,
        whisklty = 1,
        staplety = 0,
        outpch = 16,
        col = "#4E755A",
        outcol="#4E755A",
        outcex = 1.5,
        axes = FALSE)
boxplot(I12_Centrality$E_mag,
        horizontal=TRUE,
        las=1, 
        ylim = c(-0.5,1),
        boxwex = 1,
        whisklty = 1,
        staplety = 0,
        outpch = 16,
        col = "#E8B65A",
        outcol="#E8B65A",
        outcex = 1.5,
        axes = FALSE)
boxplot(I6_HousingDiversity$E_mag,
        horizontal=TRUE,
        las=1, 
        ylim = c(-0.5,1),
        boxwex = 1,
        whisklty = 1,
        staplety = 0,
        outpch = 16,
        col = "#4E755A",
        outcol="#4E755A",
        outcex = 1.5,
        axes = TRUE)

legend("right",title = "Built Environment Variables", legend=c("Density", "Diversity", "Design", "Accessibility"), fill=c("#40557C","#4E755A","#D9CDD7","#E8B65A"), horiz = FALSE, cex=0.8)

