#调和曲线图的绘制
library(MSG)
library(readxl)
#library(cowplot)
row_data <- read_excel("D:/统计学基础/new_data.xlsx")
raw_data<-data.frame(State=row_data$State, PCGDP=row_data$PCGDP, TPCE=row_data$TPCE, PCPI=row_data$PCPI, ACVA=row_data$ACVA, UR=row_data$UR, AAP=row_data$AAP)
andrews_curve(raw_data[,2:7],col=c(1,2,3,4,5,6), lwd = 1)+title('摇摆州部分社会经济情况调和曲图')
legend(-3,4,c("Florida","Iowa","Michigan","Ohio","Pennsylvania","Wisonsin"),
       lty=2:1,col = c(1,2,3,4,5,6),cex = 0.8, bty = 'o',lwd = 1)
par(cex.main=1.5)

