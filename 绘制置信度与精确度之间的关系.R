#绘制置信度与精度之间的关系
confint<-function(x,sigma=-1,alpha=0.05)
{
  n<-length(x)
  xb<-mean(x)
  if(sigma>=0)
  {
    tmp<-sigma/sqrt(n)*qnorm(1-alpha/2);df<-n
  }
  else{
    tmp<-sd(x)/sqrt(n)*qt(1-alpha/2,n-1);df<- n-1
  }
  data.frame(mean=xb,df=df,a=xb-tmp,b=xb+tmp)
}
work_data <- c(12.15, 12.12, 12.01, 12.08, 12.09, 12.16, 
               12.03, 12.01, 12.06, 12.13, 12.07, 12.11,
               12.08, 12.01, 12.03, 12.06)
confint(work_data)
x=c(-1,1)
y=c(-1,1)
#plot(x,y,type="n",xlim = c(12.01,12.17),ylim = c(0,1),xlab='', ylab = '', lwd=3, lty=2)
i = 1
p=matrix(1:21, nrow=7, ncol=3)
for (alpha_in in c(0.0001,0.001,0.005,0.01, 0.05, 0.1,0.5)){
  p[i, 1]=alpha_in
  #print(p[1,2])
  #print(confint(work_data, alpha= alpha_in)[1,1])
  p[i, 2]=confint(work_data, alpha= alpha_in)[1,3]
  #print(confint(work_data, alpha = alpha_in)['b'])
  #print(p[1, 2])
  p[i, 3]=confint(work_data, alpha = alpha_in)[1,4]
  #print(p)
  i= i+1
}
darw_data= data.frame(p)
#print(darw_data)
for (i in c(1:7)){
  plot(x,y,type="n",xlim = c(12.01,12.16),ylim = c(0,1),xlab='', ylab = '', lwd=3, lty=2)
  #axis(12.01,x)
  segments(darw_data[i,2],0.5,darw_data[i,3],0.5, col=i+1, lwd=4)
  title(paste("The value of alpha:",as.character(darw_data[i,1])))
  Sys.sleep(2)
  dev.off()
}
#a=segments(darw_data[1,2],0.5,darw_data[1,3],0.5, col='2', lwd=4)
#Sys.sleep(2)
#rm(segments(darw_data[1,2],0.5,darw_data[1,3],0.5, col='2', lwd=4))
