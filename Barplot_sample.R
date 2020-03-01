library(DescTools)
library(ggplot2)

setwd("C:/Users/lkast1/Google Drive/PhD/2.Analysis/1.Quantitative synthesis/5. Data Analysis/Paper 1 - meta-averages/V3/BE-TU-Meta-analysis")
#read in data

Sample_location<-read.csv(file="Sample_locations.csv")
Sample_location<-as.data.frame(Sample_location)
ggplot(Sample_location, aes(fill=Publication_period, y=Studies, x=Region_rank)) + 
  geom_bar(position="stack", stat="identity") + 
  coord_flip() + 
  scale_fill_manual(values = c("#bdbdbd","#636363")) +
  theme_classic()

                    


