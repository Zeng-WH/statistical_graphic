#轮廓图的绘制
library(ggplot2)
windowsFonts(myFont=windowsFont("微软雅黑"))
row_data <- read_excel("D:/统计学基础/new_data.xlsx")
#raw_data <- data.frame(State=row_data$State)
raw_data<-data.frame(State=row_data$State, PCGDP=row_data$PCGDP, TPCE=row_data$TPCE, PCPI=row_data$PCPI, ACVA=row_data$ACVA, UR=row_data$UR, AAP=row_data$AAP)
#整理数据
state_name=c(raw_data$State)
factor_name=rep(1:6, each=6)
op1=c(rep(state_name,6))
op2=c(raw_data$PCGDP,raw_data$TPCE,raw_data$PCPI,raw_data$ACVA,raw_data$UR,raw_data$AAP)
#PGCDP=c(raw_data$PCGDP)plot_d
#TPCE=c(raw_data$TPCE)
#PCPI=c(raw_data$PCPI)
#ACVA=c(raw_data$ACVA)
#UR=c(raw_data$UR)
#AAP=c(raw_data$AAP)
plot_data=data.frame(op1,factor_name,op2)
ggplot(plot_data,aes(x=factor(factor_name), y=op2, colour=op1, group=op1))+
  geom_line(linetype='dotted',size=1.1)+labs(x="经济社会指标",y="增长率或比例（归一化）",colour='摇摆州', title='2020年美国大选摇摆州部分经济社会指标比较（归一化后）')+
  scale_x_discrete(labels=c("PCGDP","TPCE","PCPI","ACVA","UR","AAP"))+
  theme(title = element_text(family = "myFont",size = 10),plot.title = element_text(hjust = 0.5))+
  geom_point(size=3.5, shape=20)+theme(legend.position="right")

