# Figure 4 A-1
plot(Pt1,type="l",xlim=c(0,60), ylim=c(0,500), ann=F,
     cex.main=3, cex.lab=2.5, cex.axis=2, col=sample(1:255,1))
par(new=T)
plot(Pt2,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt3,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt4,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt5,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt6,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt7,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt8,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt9,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt10,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt11,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt12,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt13,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt14,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt15,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt16,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))

# Figure 4 B-1
plot(Pt17,type="l",xlim=c(0,60), ylim=c(0,500), ann=F,
     cex.main=3, cex.lab=2.5, cex.axis=2, col=sample(1:255,1))
par(new=T)
plot(Pt18,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt19,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt20,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt21,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt23,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt24,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt25,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt26,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt27,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt28,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt29,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt31,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt35,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))
par(new=T)
plot(Pt57,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, axes=F, col=sample(1:255,1))

# Figure 4 A-2
plot(Pt1S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt1S$y...Inf_point.1..2.~Pt1S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt2S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt2S$y...Inf_point.1..2.~Pt2S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt3S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt3S$y...Inf_point.1..2.~Pt3S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt4S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt4S$y...Inf_point.1..2.~Pt4S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt5S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt5S$y...Inf_point.1..2.~Pt5S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt6S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt6S$y...Inf_point.1..2.~Pt6S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt7S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt7S$y...Inf_point.1..2.~Pt7S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt8S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt8S$y...Inf_point.1..2.~Pt8S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt9S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt9S$y...Inf_point.1..2.~Pt9S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt10S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt10S$y...Inf_point.1..2.~Pt10S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt11S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt11S$y...Inf_point.1..2.~Pt11S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt12S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt12S$y...Inf_point.1..2.~Pt12S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt13S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt13S$y...Inf_point.1..2.~Pt13S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt14S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt14S$y...Inf_point.1..2.~Pt14S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt15S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt15S$y...Inf_point.1..2.~Pt15S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt16S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt16S$y...Inf_point.1..2.~Pt16S$x); abline(slope,col="red",lwd=2)

# Figure 4 B-2
plot(Pt17S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt17S$y...Inf_point.1..2.~Pt17S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt18S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt18S$y...Inf_point.1..2.~Pt18S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt19S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt19S$y...Inf_point.1..2.~Pt19S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt20S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt20S$y...Inf_point.1..2.~Pt20S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt21S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt21S$y...Inf_point.1..2.~Pt21S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt23S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt23S$y...Inf_point.1..2.~Pt23S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt24S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt24S$y...Inf_point.1..2.~Pt24S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt25S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt25S$y...Inf_point.1..2.~Pt25S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt26S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt26S$y...Inf_point.1..2.~Pt26S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt27S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt27S$y...Inf_point.1..2.~Pt27S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt28S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt28S$y...Inf_point.1..2.~Pt28S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt29S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt29S$y...Inf_point.1..2.~Pt29S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt31S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt31S$y...Inf_point.1..2.~Pt31S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt35S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt35S$y...Inf_point.1..2.~Pt35S$x); abline(slope,col="red",lwd=2)
par(new=T)
plot(Pt57S,type="l",xlim=c(0,60), ylim=c(0,500), ann=F, cex.axis=2, col=1);
slope <- lm(Pt57S$y...Inf_point.1..2.~Pt57S$x); abline(slope,col="red",lwd=2)



























