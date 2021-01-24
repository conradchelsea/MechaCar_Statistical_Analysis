install.packages("gapminder")
library(gapminder)

#Deliverable 1

setwd("~/Desktop/R_Analysis/Challenge")
library(dplyr)

# Load CSV Data to structure
demo_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm (mpg ~ vehicle_weight , demo_table)

# Run Multiple Regression
lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance  + AWD, demo_table)

# Use Summary Function
summary(lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance  + AWD, demo_table))

#Deliverable 2

#Read csv as table  
Suspension_Coil_demo <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Total summary DataFrame

#summarize(Suspension_Coil_demo, Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD=sd(PSI), .groups = 'keep') 

total_summary <- summarize(Suspension_Coil_demo, Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD=sd(PSI), .groups = 'keep')

#create summary table with multiple columns

lot_summary <- Suspension_Coil_demo %>% summarize(Suspension_Coil_demo, Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD=sd(PSI), .groups = 'keep')

#Deliverable 3

#compare PSI for all Manufacturing lots versus population mean with t-test

#t.test(log10(Suspension_Coil_demo$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) (from module)
t.test(Suspension_Coil_demo$PSI, mu=1500)

#compare PSI for ea Manufacturing lot versus population mean with t-test
t.test(subset(Suspension_Coil_demo,Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension_Coil_demo,Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(Suspension_Coil_demo,Manufacturing_Lot=="Lot3")$PSI, mu=1500)
