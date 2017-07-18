library(raster)
library(sp)
library(rgdal)

# to scan arguments
args <- commandArgs(TRUE)
foldername <- args[1]

xmax <- as.numeric(args[2])
xmin <- as.numeric(args[3])
ymax <- as.numeric(args[4])
ymin <- as.numeric(args[5])
#foldername <- "test"

new.extent <- extent(xmin,xmax,ymin,ymax)

#new.extent<-extent(-100,-25,-50,25)

filename1 <-"./../features/wc2.0_30s_bio/AnnualMeanTemperature.tif"
r1 <- raster(filename1)
r1crop <- crop(x=r1,y=new.extent)

png(filename=paste("C:/wamp/www/Maxent/region/",foldername,"/crop.png",sep=''),width = 800, height = 600)
plot(r1crop,main='crop')
dev.off()