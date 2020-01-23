install.packages("dplyr")
library(dplyr)
install.packages("readxl")
library(readxl)

Pt0 <- read_excel(path = "C:/Users/LIFE/OneDrive/project/Knee HD/Pt58_HS.xlsx",
                  col_names=TRUE) #Change name!!
NO <- c(1:nrow(Pt0))
PR <- Pt0$Pressure
VOL <- c(1:nrow(Pt0))/600
PT0 <- data.frame(NO=NO, PR=PR, VOL=VOL)

x <- subset(PT0$VOL,PT0$NO%%20==0)
y <- subset(PT0$PR,PT0$NO%%20==0)

#loess function
plot(x,y,type="l",xlim=c(0,60), ylim=c(0,500))
lo <- loess(y~x, span= 0.01)
xl <- seq(min(x),max(x), (max(x) - min(x))/1000)
out = predict(lo,xl)

#Inflection point
infl <- c(FALSE, diff(diff(out)>0)!=0)

xl[infl ]
out[infl ]
points(xl[infl ],out[infl ], col="blue",pch=1)

rm <- cbind(xl[infl ],out[infl ])
#Pt1 <- c(4,39,249)  # span0.01
#Pt2 <- 4,10,21           # span0.5
#Pt3 <- 2,9,18,3:5,13:17      #Pt4 <- c(6,80,241,18:20,24:26)   #Pt5 <- 2,18,max
#Pt6 <- c(5,12,229,217:223)   #Pt7 <- c(4,29,204)               #Pt8 <- c(2,7,170)
#Pt9 <- c(20,24,197,25:28)    #Pt10 <- c(4,53,202,7:9,54:56)    #Pt11 <- c(7,119,172,11:14)
#Pt12 <- 1,18,35              #Pt13 <-c(16,59,231)              #Pt14 <- c(19,112,267)
#Pt15 <- c(12,133,217)        #Pt16 <- 1,12,max                 #Pt17 <-1,10,max
#Pt18 <- c(6,45,214,192:194,204:206,208:210) # Pt19 <- c(4,10,137)
#Pt20 <- c(11,14,183,99:101)  #Pt21 <- c(9,9,154,135:141)       ###Pt22###
#PT23 <- c(1,8,125)           #Pt24 <- c(36,53,max)             #Pt25 <- c(12,40,151,12:20,30:40)
#Pt26 <- c(16,23,190)         #Pt27 <- c(6,25,209)      #Pt28 <- c(10,11,209)
#Pt29 <- c(5,14,232)          #Pt30 <- c()              #Pt31 <- c(4,4,212)
#Pt32 <- c()                  #Pt33 <- c()              #Pt34 <- c()
#Pt35 <- c(3,11,179,11:14,169:171)  #Pt36 <- c()              #Pt37 <- c()
#Pt38 <- c()                  #Pt39 <- c()              #Pt40 <- c()
#Pt41 <- c()                  #Pt42 <- c()              #Pt43 <- c()
#Pt44 <- c()                  #Pt45 <- c()              #Pt46 <- c()
#Pt47 <- c()                  #Pt48 <- c()              #Pt49 <- c()
#Pt50 <- c()                  #Pt51 <- c()              #Pt52 <- c()
#Pt53 <- c()                  #Pt54 <- c()              #Pt55 <- c()
#Pt56 <- c()                  #Pt57 <- c(3,5,141,110:112,128:130) #Pt58 <- c()
#Pt59 <- c()                  #Pt60 <- c()              #Pt61 <- c()

#slope, Ph1st, Ph2st, Ph2en, noise, coefficient
PtP <- c(3,5,141,110:112,128:130)
Inf_point <- rm[PtP,] #or add Inf_point <- rbind(Inf_point,c((x),max(y)))
Inf_point 

#remove needle pressure & noise graph
z1<-subset(data.frame(x,y-Inf_point[1,2]),Inf_point[1,1]<x )# & x<Inf_point[4,1]) 
#z2<-subset(data.frame(x,y-Inf_point[1,2]),Inf_point[6,1]<x & x<Inf_point[7,1]) 
#z3<-subset(data.frame(x,y-Inf_point[1,2]),Inf_point[9,1]<x & x<Inf_point[3,1])
plot(rbind(z1,z2,z3),type="l",xlim=c(0,60), ylim=c(0,500), lwd=2, ann=F, axes=F, # check z number!!
     xlab = "Volume [ml]" , ylab = "Pressure", main = "Pressure-Volume Curve",
     cex.main=3, cex.lab=2.5, cex.axis=2) #Change name!! #col='#FFCC00', col='#FF9933',

#point & S, # -Inf_point[1,2] = needle pressure
points(Inf_point [1:2,1],Inf_point [1:2,2]-Inf_point[1,2], col="blue",pch=16, cex=2)
points(Inf_point [3,1],Inf_point [3,2]-Inf_point[1,2], col="blue",pch=16, cex=2) #or x[which( y==max(y) )],max(y)
points(Inf_point [4:6,1],Inf_point [4:6,2]-Inf_point[1,2], col="green",pch=17)
points(Inf_point [7:9,1],Inf_point [7:9,2]-Inf_point[1,2], col="green",pch=17)

slope <- lm(out[infl ][PtP[2]:PtP[3]]-Inf_point[1,2]~xl[infl ][PtP[2]:PtP[3]])
#slope <- lm(c(out[infl ][PtP[2]:PtP[4]],out[infl ][PtP[6]:PtP[3]])-Inf_point[1,2]
#~c(xl[infl ][PtP[2]:PtP[4]],xl[infl ][PtP[6]:PtP[3]]))  # 1 noise 

abline(slope,col="red",lwd=2)

lines(Inf_point [1:2,1], Inf_point [1:2,2]-Inf_point[1,2], col='Yellow', lwd=2)

#Pr-time curve
plot((3*x),y,type="l",xlim=c(0,180), ylim=c(0,500), 
     xlab = "Time [Sec]" , ylab = "Pressure", main = "Pressure-Time Curve",
     cex.main=3, cex.lab=2.5, cex.axis=2) #Change name!!
points(Inf_point [1:2,1]*3,Inf_point [1:2,2], col="blue",pch=1, cex=2)
points(Inf_point [3,1]*3,Inf_point [3,2], col="blue",pch=1, cex=2) #or x[which( y==max(y) )],max(y)
points(Inf_point [4:6,1]*3,Inf_point [4:6,2], col="green",pch=17, cex=1.5)
points(Inf_point [7:9,1]*3,Inf_point [7:9,2], col="green",pch=17, cex=1.5)

#overlap
#Pt1 rbind(z1,z2,z3,z4)

plot(Pt1,type="l",xlim=c(0,60), ylim=c(0,500),
     xlab = "Volume" , ylab = "Pressure", main = "Pressure-Volume Curve",
     cex.main=3, cex.lab=2.5, cex.axis=2, col=sample(1:255,1))
par(new=T)
plot(Pt16,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))


#save to xlsx
Inf_point <- data.frame(Inf_point)
v <- rbind(Inf_point,c(x[which( y==max(y) )],max(y)))
w <- cbind(Inf_point$X1,Inf_point$X2-Inf_point[1,2])
Xlsx <- rbind(w,
              slope$coefficients)
colnames(Xlsx) = c("Vol","Pr")
write.csv(Xlsx, "Pt27.csv")   #Change name!!