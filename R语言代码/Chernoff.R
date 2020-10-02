#脸谱图的绘制
library(TeachingDemos)
row_data <- read_excel("D:/统计学基础/new_data.xlsx")
raw_data<-data.frame(State=row_data$State, PCGDP=row_data$PCGDP, TPCE=row_data$TPCE, PCPI=row_data$PCPI, ACVA=row_data$ACVA, UR=row_data$UR, AAP=row_data$AAP)
#title('摇摆州部分社会经济状况脸谱图',cex.main=0.9,line=5)
faces2(raw_data[,2:7],which = c(2, 6, 8, 14, 13, 15), labels = raw_data[,1])
title('摇摆州部分社会经济状况脸谱图', cex.main=0.8,line=2.7)


