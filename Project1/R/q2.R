df = read.table("../IPPS_DRG_FY2017.csv", sep = ',', fill = TRUE, header = TRUE) 

library(ggplot2)
TD = df$Total.Discharges
# ggplot(df, aes(df$Total.Discharges)) + geom_density()
ggplot(df, aes(y = df$Average.Total.Payments, x = df$Average.Medicare.Payments)) +
  geom_point()

df = read.table("../100DRG.csv", sep = ',', header = TRUE) 
library(ggplot2)
# max 1
ggplot(df, aes(x = df$DRG.Charges.292, y = df$DRG.Charges.293)) + geom_point() + geom_smooth(method = 'loess')
# max 2
ggplot(df, aes(x = df$DRG.Charges.481, y = df$DRG.Charges.482)) + geom_point() + geom_smooth(method = 'loess')
# min 1
ggplot(df, aes(x = df$DRG.Charges.269, y = df$DRG.Charges.371)) + geom_point() + geom_smooth(method = 'loess')
# min2
ggplot(df, aes(x = df$DRG.Charges.315, y = df$DRG.Charges.460)) + geom_point() + geom_smooth(method = 'loess')

df = read.csv("../DRG_6states.csv")
states = c('CA', 'NY')

