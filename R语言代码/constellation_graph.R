#星座图的绘制
#先借助极差标准化
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
PCGDP=(PCGDP-min(PCGDP))/(max(PCGDP)-min(PCGDP))*pi
TPCE=(TPCE-min(TPCE))/(max(TPCE)-min(TPCE))*pi
PCPI=(PCPI-min(PCPI))/(max(PCPI)-min(PCPI))*pi
ACVA=(ACVA-min(ACVA))/(max(ACVA)-min(ACVA))*pi
UR=(UR-min(UR))/(max(UR)-min(UR))*pi
AAP=(AAP-min(AAP))/(max(AAP)-min(AAP))*pi
data_out=data.frame(State,PCGDP,TPCE,PCPI,ACVA,UR,AAP)
write.xlsx(data_out,'D:/统计学基础/star_map_data.xlsx',row.names = F)
#绘制轮廓
f=seq(-pi/2,pi/2,0.001)
x=sin(f)
y=cos(f)
plot(x,y,type="l",xlim = c(-1,1),ylim = c(0,1),xlab='', ylab = '', lwd=3, lty=2)
segments(-1,0,1,0,col ='black',lty=2, lwd=3)
#定义权重
w=c(0.1,0.3,0.2,0.1,0.2,0.1)
for (i in c(1:6)){
  p=matrix(1:12,nrow=6,ncol=2)
  for (j in c(1:6)){
    p[j,1]=sum(w[1:j]*cos(data_out[i,2:j+1]))
    p[j,2]=sum(w[1:j]*sin(data_out[i,2:j+1]))
  }
  segments(0,0,p[1,1],p[1,2],col=i+1, lwd=2)
  for (k in c(1:5)){
    segments(p[k,1],p[k,2],p[k+1,1],p[k+1,2],col = i+1, lwd=2)
  }
  for (l in c(1:6)){
    points(p[l,1],p[l,2])
  }
  points(p[6,1],p[6,2],pch=11)
}
title('摇摆州部分社会经济情况星座图')
legend(-1,1,c("Florida","Iowa","Michigan","Ohio","Pennsylvania","Wisonsin"),
       col = c(2,3,4,5,6,7),cex = 0.8, bty = 'o',lwd = 1)

