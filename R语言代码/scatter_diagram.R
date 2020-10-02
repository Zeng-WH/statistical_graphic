#散点图的绘制
library(ggplot2)
library(ggradar)
library(readxl)
library(cowplot)
row_data <- read_excel("D:/统计学基础/new_data.xlsx")
raw_data<-data.frame(State=row_data$State, PCGDP=row_data$PCGDP, TPCE=row_data$TPCE, PCPI=row_data$PCPI, ACVA=row_data$ACVA, UR=row_data$UR, AAP=row_data$AAP)
p1=ggplot(data=raw_data, aes(x=PCGDP, y=PCGDP,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p2=ggplot(data=raw_data, aes(x=PCGDP, y=TPCE,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p3=ggplot(data=raw_data, aes(x=PCGDP, y=PCPI,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p4=ggplot(data=raw_data, aes(x=PCGDP, y=ACVA,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p5=ggplot(data=raw_data, aes(x=PCGDP, y=UR,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p6=ggplot(data=raw_data, aes(x=PCGDP, y=AAP,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p7=ggplot(data=raw_data, aes(x=TPCE, y=PCGDP,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p8=ggplot(data=raw_data, aes(x=TPCE, y=TPCE,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p9=ggplot(data=raw_data, aes(x=TPCE, y=PCPI,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p10=ggplot(data=raw_data, aes(x=TPCE, y=ACVA,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p11=ggplot(data=raw_data, aes(x=TPCE, y=UR,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p12=ggplot(data=raw_data, aes(x=TPCE, y=AAP,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p13=ggplot(data=raw_data, aes(x=PCPI, y=PCGDP,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p14=ggplot(data=raw_data, aes(x=PCPI, y=TPCE,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p15=ggplot(data=raw_data, aes(x=PCPI, y=PCPI,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p16=ggplot(data=raw_data, aes(x=PCPI, y=ACVA,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p17=ggplot(data=raw_data, aes(x=PCPI, y=UR,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p18=ggplot(data=raw_data, aes(x=PCPI, y=AAP,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p19=ggplot(data=raw_data, aes(x=ACVA, y=PCGDP,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p20=ggplot(data=raw_data, aes(x=ACVA, y=TPCE,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p21=ggplot(data=raw_data, aes(x=ACVA, y=PCPI,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p22=ggplot(data=raw_data, aes(x=ACVA, y=ACVA,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p23=ggplot(data=raw_data, aes(x=ACVA, y=UR,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p24=ggplot(data=raw_data, aes(x=ACVA, y=AAP,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p25=ggplot(data=raw_data, aes(x=UR, y=PCGDP,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p26=ggplot(data=raw_data, aes(x=UR, y=TPCE,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p27=ggplot(data=raw_data, aes(x=UR, y=PCPI,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p28=ggplot(data=raw_data, aes(x=UR, y=ACVA,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p29=ggplot(data=raw_data, aes(x=UR, y=UR,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p30=ggplot(data=raw_data, aes(x=UR, y=AAP,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p31=ggplot(data=raw_data, aes(x=AAP, y=PCGDP,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p32=ggplot(data=raw_data, aes(x=AAP, y=TPCE,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p33=ggplot(data=raw_data, aes(x=AAP, y=PCPI,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p34=ggplot(data=raw_data, aes(x=AAP, y=ACVA,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p35=ggplot(data=raw_data, aes(x=AAP, y=UR,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
p36=ggplot(data=raw_data, aes(x=AAP, y=AAP,color=State))+geom_point(size=1)+theme(legend.position = "none", axis.text=element_blank(),axis.title = element_blank())
ggdraw()+draw_plot(p1, 0, 0.75, 0.15, 0.15)+draw_plot(p2,0.15,0.75,0.15,0.15)+
  draw_plot(p3,0.3,0.75,0.15,0.15)+draw_plot(p4,0.45,0.75,0.15,0.15)+draw_plot(p5,0.6,0.75,0.15,0.15)+
  draw_plot(p6,0.75,0.75,0.15,0.15)+draw_plot(p7,0,0.6,0.15,0.15)+
  draw_plot(p8,0.15,0.6,0.15,0.15)+draw_plot(p9,0.3,0.6,0.15,0.15)+
  draw_plot(p10,0.45,0.6,0.15,0.15)+draw_plot(p11,0.6,0.6,0.15,0.15)+
  draw_plot(p12,0.75,0.6,0.15,0.15)+draw_plot(p13,0,0.45,0.15,0.15)+
  draw_plot(p14,0.15,0.45,0.15,0.15)+draw_plot(p15,0.3,0.45,0.15,0.15)+
  draw_plot(p16,0.45,0.45,0.15,0.15)+draw_plot(p17,0.6,0.45,0.15,0.15)+
  draw_plot(p18,0.75,0.45,0.15,0.15)+draw_plot(p19,0,0.3,0.15,0.15)+
  draw_plot(p20,0.15,0.3,0.15,0.15)+draw_plot(p21,0.3,0.3,0.15,0.15)+
  draw_plot(p22,0.45,0.3,0.15,0.15)+draw_plot(p23,0.6,0.3,0.15,0.15)+
  draw_plot(p24,0.75,0.3,0.15,0.15)+draw_plot(p25,0,0.15,0.15,0.15)+
  draw_plot(p26,0.15,0.15,0.15,0.15)+draw_plot(p27,0.3,0.15,0.15,0.15)+
  draw_plot(p28,0.45,0.15,0.15,0.15)+draw_plot(p29,0.6,0.15,0.15,0.15)+
  draw_plot(p30,0.75,0.15,0.15,0.15)+draw_plot(p31,0,0,0.15,0.15)+
  draw_plot(p32,0.15,0,0.15,0.15)+draw_plot(p33,0.3,0,0.15,0.15)+
  draw_plot(p34,0.45,0,0.15,0.15)+draw_plot(p35,0.6,0,0.15,0.15)+
  draw_plot(p36,0.75,0,0.15,0.15)+draw_label("摇摆州部分社会经济指标比较",0.45,0.96, size = 10, color = 'black')+
  draw_plot_label("PCGDP",0.85, 0.85, size=8)+
  draw_plot_label("TPCE",0.86, 0.7, size=8)+
  draw_plot_label("PCPI",0.87, 0.55, size=8)+
  draw_plot_label("ACVA",0.86, 0.4, size=8)+
  draw_plot_label("UR",0.885, 0.25, size=8)+
  draw_plot_label("AAP",0.87, 0.1, size=8)+
  draw_plot_label("PCGDP",0, 0.93, size=8)+
  draw_plot_label("TPCE",0.15, 0.93, size=8)+
  draw_plot_label("PCPI",0.3, 0.93, size=8)+
  draw_plot_label("ACVA",0.45, 0.93, size=8)+
  draw_plot_label("UR",0.65, 0.93, size=8)+
  draw_plot_label("AAP",0.78, 0.93, size=8)

