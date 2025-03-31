rm(list=ls(all=T)) # clear memory

## Example of Erodibility dataset
load('Data_Erodibility.rda')
head(Data_Erodibility)

source("KFactor.r")

kfactor <- KFactor(Data_Erodibility)
round(kfactor,6) # result K factor



## Example of Rainfall datase in minutes
load('Data_Rainfall_minutes.rda')
head(Data_Rainfall_minutes)

source("RFactor_calc.r")

res <- RFactor_calc(Data_Rainfall_minutes, erosive.precip = 10, equation = "WS")
res$result



## Example of Rainfall datase in month
load('Data_Rainfall_month.rda')
head(Data_Rainfall_month)

source("RFactor_est.r")

rfactor <- RFactor_est(Data_Rainfall_month[,2:13], 
                       latitude = -12.01527777, 
                       longitude = -48.544444440)
rfactor$RFactor
rfactor$equation



## Example of Water erosion dataset
load('Data_SoilLoss.rda')
head(Data_SoilLoss)

source("SoilLoss.r")

SoilLoss <- SoilLoss(Data_SoilLoss[,2:6])
round(SoilLoss,2) # result Soil loss
