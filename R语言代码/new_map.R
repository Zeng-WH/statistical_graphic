#创造图形
library(maps)
library(TeachingDemos)
map('state')
points(-85,28,pch=19,cex=3.14,col=2)#佛罗里达州的PCGDP
points(-83,28,pch=19,cex=3.14,col=3)#佛罗里达州的TPCE
points(-81,28,pch=19,cex=2.8,col=4)#佛罗里达州的PCPI
points(-79,28,pch=19,cex=3.14,col=5)#佛罗里达州的ACVA
points(-77,28,pch=19,cex=1.29,col=6)#佛罗里达州的UR
points(-75,28,pch=19,cex=3.14,col=7)#佛罗里达州的AAP
text(-80,29.5,'Florida')
points(-82,41,pch=19,cex=2.39,col=2)#宾夕法尼亚的PCGDP
points(-80,41,pch=19,cex=1.88,col=3)#宾夕法尼亚的TPCE
points(-78,41,pch=19,cex=1.78,col=4)#宾夕法尼亚的PCPI
points(-76,41,pch=19,cex=2.69,col=5)#宾夕法尼亚的ACVA
points(-74,41,pch=19,cex=2.77,col=6)#宾夕法尼亚的UR
points(-72,41,pch=19,cex=1.94,col=7)#宾夕法尼亚的AAP
text(-77.5,42.5,'Pennsylvania')
title('摇摆州部分社会经济情况')
legend(-123,32,c("PCGDP","TPCE","PCPI","ACVA","UR","AAp"),
       col = c(2,3,4,5,6,7),cex = 0.8, bty = 'o',lwd = 1, pch=1, lty=0)
