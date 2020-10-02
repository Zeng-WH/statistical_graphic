#雷达图的绘制
library(ggplot2)
library(ggradar)
library(readxl)
miguo <- read_excel("D:/统计学基础/new_data.xlsx")
View(miguo)
raw_data<-data.frame(PCGDP=miguo$PCGDP, TPCE=miguo$TPCE, PCPI=miguo$PCPI, ACVA=miguo$ACVA, UR=miguo$UR, AAP=miguo$AAP)
#rownames(raw_data)<-miguo$State
raw_data_new=data.frame(miguo$State,raw_data)
ggradar(raw_data_new, legend.title ='摇摆州', 
        #base为所有文字, axis为外圈文字，grid为圈内标签文字,lengend.title为图例文字的大小
        base.size=5, axis.label.size=4, grid.label.size=4, legend.text.size=8,
        #设置各层bar值,values.radar仅支持“内”，“中”，“外”三个数值，超过三个将只取前三个
        values.radar=c("30%","60%","100%"),
        #设置grid标签环分隔值（决定标签文字位置），grid.max必须大于数据框最大值，grid.min控制最小环大小，
        #grid.max=1.0,grid.mid=0.55,grid.min=0.1,
        #修改背景颜色
        background.circle.colour = 'white',
        #改变最小环的类型和颜色
        gridline.min.colour='grey80',
        gridline.min.linetype='solid',
        #设置其他环的颜色
        gridline.mid.colour='grey80',
        #gridline.mid.linetype='solid',
        #gridline.max.linetype='solid',
        gridline.max.colour='grey80',
        #设置背景组点大小为0.5，线条宽度为0.5；需要展示的数据组点大小为3，线条宽度为1.5
        group.point.size=2.5,
        group.line.width=0.7,
        plot.title='摇摆州部分社会经济指标比较')+
        theme(plot.title = element_text(hjust = 0.5, size=16),legend.title = element_text(size='8'), legend.position = 'right')
        

