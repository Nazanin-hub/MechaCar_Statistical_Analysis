library(dplyr)
MechaCar <- read.csv(file= "MechaCar_mpg.csv",check.names = F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar))


Suspension_Coil <- read.csv(file= "Suspension_Coil.csv ",check.names = F,stringsAsFactors = F)

total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI),Sd_PSI=sd(PSI), .groups = 'keep') #create summary table with multiple columns

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot)%>%summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Var_PSI=var(PSI),Sd_PSI=sd(PSI), .groups = 'keep')



t.test((Suspension_Coil$PSI),mu=1500) #compare suspension versus population means.

Lot1 <- Suspension_Coil %>% subset(Manufacturing_Lot=='Lot1')## Create subset for lot1 
t.test((Lot1$PSI),mu=1500)#compare Lot1 versus population mean

Lot2 <- Suspension_Coil %>% subset(Manufacturing_Lot=='Lot2')## Create subset for lot2 
t.test((Lot2$PSI),mu=1500)#compare Lot2 versus population mean


Lot3 <- Suspension_Coil %>% subset(Manufacturing_Lot=='Lot3')## Create subset for lot 3 
t.test((Lot3$PSI),mu=1500)#compare Lot3 versus population mean