#极差标准化归一数据
library(ggplot2)
library(ggradar)
library(readxl)
library(xlsx)
miguo <- read_excel("D:/统计学基础/数据.xlsx")
View(miguo)
#读取数据
State=miguo$State
PCGDP=miguo$PCGDP
TPCE=miguo$TPCE
PCPI=miguo$PCPI
ACVA=miguo$ACVA
UR=miguo$UR
AAP=miguo$AAP
PCGDP=(PCGDP-min(PCGDP))/(max(PCGDP)-min(PCGDP))
TPCE=(TPCE-min(TPCE))/(max(TPCE)-min(TPCE))
PCPI=(PCPI-min(PCPI))/(max(PCPI)-min(PCPI))
ACVA=(ACVA-min(ACVA))/(max(ACVA)-min(ACVA))
UR=(UR-min(UR))/(max(UR)-min(UR))
AAP=(AAP-min(AAP))/(max(AAP)-min(AAP))
data_out=data.frame(State,PCGDP,TPCE,PCPI,ACVA,UR,AAP)
write.xlsx(data_out,'D:/统计学基础/new_data.xlsx',row.names = F)
