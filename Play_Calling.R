library('tidyverse')
library('readxl')
library('ggpubr')
# Adding in playcall data
Playcalling <- read_excel('/Users/jtgood/Library/Containers/com.microsoft.Excel/Data/Desktop/NFL/NFL_Playcalls.xlsx.xlsx')
par(mfrow=c(2,2))
# Determining if wins are affected by number of pass plays called per year
ggscatter(Playcalling, x = "Wins", y = "Pass Plays",
          add = 'reg.line', conf.int = TRUE,
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Wins", ylab = "Pass Plays")
# Determining if wins are affected by number of run plays called per year
ggscatter(Playcalling, x = "Wins", y = "Run Plays",
          add = 'reg.line', conf.int = TRUE,
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Wins", ylab = "Run Plays")
# Determining if wins are affected by percentage of pass plays called per year
ggscatter(Playcalling, x = "Wins", y = "Pass Play %",
          add = 'reg.line', conf.int = TRUE,
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Wins", ylab = "Pass Play %")
# Determining if wins are affected by percentage of run plays called per year
ggscatter(Playcalling, x = "Wins", y = "Run Play %",
          add = 'reg.line', conf.int = TRUE,
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "Wins", ylab = "Run Play %")