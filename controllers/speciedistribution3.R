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

#checkbox values fetch

x1 <- as.numeric(args[6])
x2 <- as.numeric(args[7])
x3 <- as.numeric(args[8])
x4 <- as.numeric(args[9])
x5 <- as.numeric(args[10])
x6 <- as.numeric(args[11])
x7 <- as.numeric(args[12])
x8 <- as.numeric(args[13])
x9 <- as.numeric(args[14])
x10 <- as.numeric(args[15])
x11 <- as.numeric(args[16])
x12 <- as.numeric(args[17])
x13 <- as.numeric(args[18])
x14 <- as.numeric(args[19])
x15 <- as.numeric(args[20])
x16 <- as.numeric(args[21])
x17 <- as.numeric(args[22])
x18 <- as.numeric(args[23])
x19 <- as.numeric(args[24])
x20 <- as.numeric(args[25])

#foldername <- "files1499423407"

new.extent <- extent(xmin,xmax,ymin,ymax)

progress <- file(paste("C:/wamp/www/Maxent/uploads/",foldername,"/progress.txt",sep=''))

#new.extent<-extent(-100,-25,-50,25)

filename1 <-"./../features/wc2.0_30s_bio/AnnualMeanTemperature.tif"
r1 <- raster(filename1)
r1crop <- crop(x=r1,y=new.extent)


filename2 <-"./../features/wc2.0_30s_bio/MeanDiurnalRange.tif"
r2 <- raster(filename2)
r2crop <- crop(x=r2,y=new.extent)


filename3 <-"./../features/wc2.0_30s_bio/Isothermality.tif"
r3 <- raster(filename3)
r3crop <- crop(x=r3,y=new.extent)


filename4 <-"./../features/wc2.0_30s_bio/TemperatureSeasonality.tif"
r4 <- raster(filename4)
r4crop <- crop(x=r4,y=new.extent)


filename5 <-"./../features/wc2.0_30s_bio/MaxTemperatureofWarmestMonth.tif"
r5 <- raster(filename5)
r5crop <- crop(x=r5,y=new.extent)


filename6 <-"./../features/wc2.0_30s_bio/MinTemperatureofColdestMonth.tif"
r6 <- raster(filename6)
r6crop <- crop(x=r6,y=new.extent)


filename7 <-"./../features/wc2.0_30s_bio/TemperatureAnnualRange.tif"
r7 <- raster(filename7)
r7crop <- crop(x=r7,y=new.extent)


filename8 <- "./../features/wc2.0_30s_bio/MeanTemperatureofWettestQuarter.tif"
r8 <- raster(filename8)
r8crop <- crop(x=r8,y=new.extent)


filename9 <-"./../features/wc2.0_30s_bio/MeanTemperatureofDriestQuarter.tif"
r9 <- raster(filename9)
r9crop <- crop(x=r9,y=new.extent)


filename10 <-"./../features/wc2.0_30s_bio/MeanTemperatureofWarmestQuarter.tif"
r10 <- raster(filename10)
r10crop <- crop(x=r10,y=new.extent)


filename11 <-"./../features/wc2.0_30s_bio/MeanTemperatureofColdestQuarter.tif"
r11 <- raster(filename11)
r11crop <- crop(x=r11,y=new.extent)


filename12 <- "./../features/wc2.0_30s_bio/AnnualPrecipitation.tif"
r12 <- raster(filename12)
r12crop <- crop(x=r12,y=new.extent)


filename13 <- "./../features/wc2.0_30s_bio/PrecipitationofWettestMonth.tif"
r13 <- raster(filename13)
r13crop <- crop(x=r13,y=new.extent)


filename14 <- "./../features/wc2.0_30s_bio/PrecipitationofDriestMonth.tif"
r14 <- raster(filename14)
r14crop <- crop(x=r14,y=new.extent)


filename15 <- "./../features/wc2.0_30s_bio/PrecipitationSeasonality.tif"
r15 <- raster(filename15)
r15crop <- crop(x=r15,y=new.extent)



filename16 <- "./../features/wc2.0_30s_bio/PrecipitationofWettestQuarter.tif"
r16 <- raster(filename16)
r16crop <- crop(x=r16,y=new.extent)


filename17 <- "./../features/wc2.0_30s_bio/PrecipitationofDriestQuarter.tif"
r17 <- raster(filename17)
r17crop <- crop(x=r17,y=new.extent)


filename18 <- "./../features/wc2.0_30s_bio/PrecipitationofWarmestQuarter.tif"
r18 <- raster(filename18)
r18crop <- crop(x=r18,y=new.extent)


filename19 <-"./../features/wc2.0_30s_bio/PrecipitationofColdestQuarter.tif"
r19 <- raster(filename19)
r19crop <- crop(x=r19,y=new.extent)

#creating a raster object for each raster file 
# filename1 <-"C:/wamp/www/Maxent/features/Annual Mean Temperature.tif"
# r1 <- raster(filename1)
# 
# 
# filename2 <-"C:/wamp/www/Maxent/features/Mean Diurnal Range.tif"
# r2 <- raster(filename2)
# 
# 
# filename3 <-"C:/wamp/www/Maxent/features/Isothermality.tif"
# r3 <- raster(filename3)
# 
# 
# filename4 <-"C:/wamp/www/Maxent/features/Temperature Seasonality.tiff"
# r4 <- raster(filename4)
# 
# 
# filename5 <-"C:/wamp/www/Maxent/features/Max Temperature of Warmest Month.tif"
# r5 <- raster(filename5)
# 
# 
# filename6 <-"C:/wamp/www/Maxent/features/Min Temperature of Coldest Month.tif"
# r6 <- raster(filename6)
# 
# 
# filename7 <-"C:/wamp/www/Maxent/features/Temperature Annual Range.tiff"
# r7 <- raster(filename7)
# 
# 
# filename8 <- "C:/wamp/www/Maxent/features/Mean Temperature of Wettest Quarter.tif"
# r8 <- raster(filename8)
# 
# 
# filename9 <-"C:/wamp/www/Maxent/features/Mean Temperature of Driest Quarter.tif"
# r9 <- raster(filename9)
# 
# 
# filename10 <-"C:/wamp/www/Maxent/features/Mean Temperature of Warmest Quarter.tif"
# r10 <- raster(filename10)
# 
# 
# filename11 <-"C:/wamp/www/Maxent/features/Mean Temperature of Coldest Quarter.tif"
# r11 <- raster(filename11)
# 
# 
# filename12 <- "C:/wamp/www/Maxent/features/Annual Precipitation.tif"
# r12 <- raster(filename12)
# 
# 
# filename13 <- "C:/wamp/www/Maxent/features/Precipitation of Wettest Month.tif"
# r13 <- raster(filename13)
# 
# 
# filename14 <- "C:/wamp/www/Maxent/features/Precipitation of Driest Month.tif"
# r14 <- raster(filename14)
# 
# 
# filename15 <- "C:/wamp/www/Maxent/features/Precipitation Seasonality.tif"
# r15 <- raster(filename15)
# 
# 
# filename16 <- "C:/wamp/www/Maxent/features/Precipitation of Wettest Quarter.tif"
# r16 <- raster(filename16)
# 
# 
# filename17 <- "C:/wamp/www/Maxent/features/Precipitation of Driest Quarter.tif"
# r17 <- raster(filename17)
# 
# 
# filename18 <- "C:/wamp/www/Maxent/features/Precipitation of Warmest Quarter.tif"
# r18 <- raster(filename18)
# 
# 
# filename19 <-"C:/wamp/www/Maxent/features/Precipitation of Coldest Quarter.tif"
# r19 <- raster(filename19)

#getting the lattitude and longitude values
setwd(paste("C:/wamp/www/Maxent/uploads/",foldername,"/",sep=''))
points <- read.csv(file="alltest.csv",header=TRUE,sep=",")
points <- points[,c(2,3)]
points <- SpatialPoints(coords = points, proj4string = CRS("+proj=longlat +datum=WGS84"))

#forming a stack of all the raster objects
s <- stack(r1crop,r2crop,r3crop,r4crop,r5crop,r6crop,r7crop,r8crop,r9crop,r10crop,r11crop,r12crop,r13crop,r14crop,r15crop,r16crop,r17crop,r18crop,r19crop)

#plotting all the raster files with the points plotted on it
#s1<-paste("C:/wamp/www/Maxent/uploads/",foldername,"/Annualmeantemperature.png",sep='')
#s1
if(x1==1)
{
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/Annualmeantemperature.png",sep=''),width = 800, height = 600)
	plot(s[[1]],main='Annual Mean Temperature')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 1 over"),progress)
}
#close(progress)
 
if(x2==1)
{
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/MeanDiurnalRange.png",sep=''),width = 800, height = 600)
	plot(s[[2]],main='Mean Diurnal Range')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 2 over"),progress)
}
#close(progress)
 
if(x3==1)
{
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/Isothermality.png",sep=''),width = 800, height = 600)
	plot(s[[3]],main='Isothermality')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 3 over"),progress)
}	
#close(progress)
if(x4==1)
{ 
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/TemperatureSeasonality.png",sep=''),width = 800, height = 600)
	plot(s[[4]],main='Temperature Seasonality')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 4 over"),progress)
}	
#close(progress)

if(x5==1)
{ 
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/MaxTemperatureofWarmestMonth.png",sep=''),width = 800, height = 600)
	plot(s[[5]],main='Max Temperature of Warmest Month')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 5 over"),progress)
}	
#close(progress)

if(x6==1)
{  
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/MinTemperatureofColdestMonth.png",sep=''),width = 800, height = 600)
	plot(s[[6]],main='Min Temperature of Coldest Month')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 6 over"),progress)
}	
#close(progress)

if(x7==1)
{  
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/TemperatureAnnualRange.png",sep=''),width = 800, height = 600)
	plot(s[[7]],main='Temperature Annual Range')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 7 over"),progress)
}	
#close(progress)

if(x8==1)
{  
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/MeanTemperatureofWettestQuarter.png",sep=''),width = 800, height = 600)
	plot(s[[8]],main='Mean Temperature of Wettest Quarter')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 8 over"),progress)
}	
#close(progress)

if(x9==1)
{  
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/MeanTemperatureofDriestQuarter.png",sep=''),width = 800, height = 600)
	plot(s[[9]],main='Mean Temperature of Driest Quarter')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 9 over"),progress)
}	
#close(progress)

if(x10==1)
{  
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/MeanTemperatureofWarmestQuarter.png",sep=''),width = 800, height = 600)
	plot(s[[10]],main='Mean Temperature of Warmest Quarter')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 10 over"),progress)
}	
#close(progress)

if(x11==1)
{
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/MeanTemperatureofColdestQuarter.png",sep=''),width = 800, height = 600)
	plot(s[[11]],main='Mean Temperature of Coldest Quarter')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 11 over"),progress)
}	
#close(progress)

if(x12==1)
{ 
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/AnnualPrecipitation.png",sep=''),width = 800, height = 600)
	plot(s[[12]],main='Annual Precipitation')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 12 over"),progress)
}	
#close(progress)

if(x13==1)
{  
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/PrecipitationofWettestMonth.png",sep=''),width = 800, height = 600)
	plot(s[[13]],main='Precipitation of Wettest Month')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 13 over"),progress)
}	
#close(progress)

if(x14==1)
{ 
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/PrecipitationofDriestMonth.png",sep=''),width = 800, height = 600)
	plot(s[[14]],main='Precipitation of Driest Month')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 14 over"),progress)
}	
#close(progress)

if(x15==1)
{ 
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/PrecipitationSeasonality.png",sep=''),width = 800, height = 600)
	plot(s[[15]],main='Precipitation Seasonality')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 15 over"),progress)
}	
#close(progress)

if(x16==1)
{ 
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/PrecipitationofWettestQuarter.png",sep=''),width = 800, height = 600)
	plot(s[[16]],main='Precipitation of Wettest Quarter')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 16 over"),progress)
}	
#close(progress)

if(x17==1)
{  
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/PrecipitationofDriestQuarter.png",sep=''),width = 800, height = 600)
	plot(s[[17]],main='Precipitation of Driest Quarter')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 17 over"),progress)
}	
#close(progress)

if(x18==1)
{  
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/PrecipitationofWarmestQuarter.png",sep=''),width = 800, height = 600)
	plot(s[[18]],main='Precipitation of Warmest Quarter')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 18 over"),progress)
}	
#close(progress)

if(x19==1)
{  
	png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/PrecipitationofColdestQuarter.png",sep=''),width = 800, height = 600)
	plot(s[[19]],main='Precipitation of Coldest Quarter')
	plot(points, add = TRUE, col = "red", pch = 3)
	dev.off()
	writeLines(c("step 19 over"),progress)
}

	
#close(progress)
 
# # fun <- function() {
# #   plot(points, add = TRUE, col = "red", pch = 3)
# # }
#  
# #png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/RasterStack.png,sep=''),width = 800, height = 600)
# #plot(s, addfun = fun ,nc=3)
# #dev.off()
# 
library(dismo)
library(rJava)
library(jsonlite)
library(graphics)
library(maps)
library(maptools)
library(rgeos)
library(rgdal)
library(lattice)
library(raster)
library(car)
library(xlsx)
library(sm)
library(rgl)
library(rpanel)
library(maptools)
library(rms)
library(virtualspecies)
library(base)
library(lattice)
# 
# 
# #jar <- paste(system.file(package="dismo"), "/java/maxent.jar",sep=' ')
# 
# #checking if maxent.jar file is there or not
# 
ct <- 0
if(x1==0)
{
	s <- dropLayer(s,1-ct)
	ct <- ct+1
}

if(x2==0)
{
	s <- dropLayer(s,2-ct)
	ct <- ct+1
}

if(x3==0)
{
	s <- dropLayer(s,3-ct)
	ct <- ct+1
}

if(x4==0)
{
	s <- dropLayer(s,4-ct)
	ct <- ct+1
}

if(x5==0)
{
	s <- dropLayer(s,5-ct)
	ct <- ct+1
}

if(x6==0)
{
	s <- dropLayer(s,6-ct)
	ct <- ct+1
}

if(x7==0)
{
	s <- dropLayer(s,7-ct)
	ct <- ct+1
}

if(x8==0)
{
	s <- dropLayer(s,8-ct)
	ct <- ct+1
}

if(x9==0)
{
	s <- dropLayer(s,9-ct)
	ct <- ct+1
}

if(x10==0)
{
	s <- dropLayer(s,10-ct)
	ct <- ct+1
}

if(x11==0)
{
	s <- dropLayer(s,11-ct)
	ct <- ct+1
}

if(x12==0)
{
	s <- dropLayer(s,12-ct)
	ct <- ct+1
}

if(x13==0)
{
	s <- dropLayer(s,13-ct)
	ct <- ct+1
}

if(x14==0)
{
	s <- dropLayer(s,14-ct)
	ct <- ct+1
}

if(x15==0)
{
	s <- dropLayer(s,15-ct)
	ct <- ct+1
}

if(x16==0)
{
	s <- dropLayer(s,16-ct)
	ct <- ct+1
}

if(x17==0)
{
	s <- dropLayer(s,17-ct)
	ct <- ct+1
}

if(x18==0)
{
	s <- dropLayer(s,18-ct)
	ct <- ct+1
}

if(x19==0)
{
	s <- dropLayer(s,19-ct)
	ct <- ct+1
}

predictors <- s
occ <- points
spoints <- SpatialPoints(points)
projection(spoints)<-"+proj=longlat +ellps=WGS84 +datum=WGS84"
 
# #seperating 20% data for testing
fold <- kfold(occ, k=5)
occtest <- occ[fold == 1, ]
occtrain <- occ[fold != 1, ]

model.maxent <- maxent(x=predictors,p=spoints,path=paste("C:/wamp/www/Maxent/uploads/",foldername,sep=''),args=c('randomtestpoints=30','betamultiplier=1','linear=true','quadratic=true','product=true','threshold=true','hinge=true','threads=2','responsecurves=true','jackknife=true','askoverwrite=false'))
writeLines(c("step 20 over"),progress)
#close(progress)
# #to have a look at the model output
model.maxent
 
png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/contribution.png",sep=''),width = 800, height = 600)
# #variable contribution		
plot(model.maxent)
dev.off()
writeLines(c("step 21 over"),progress)
#close(progress)

# 
# #generation of the map
map.model.maxent <- predict(object=model.maxent,x=s,ma.rm=TRUE,format='GTiff',overwrite=TRUE,progress='text')
# 
# #look at the map
png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/map.png",sep=''),width = 1600, height = 1200)
plot(map.model.maxent,main='BRADYPUS VARIEGATUS')
# 
# #adding points to the map
points(spoints, col='blue', pch=20, cex=0.2)
dev.off()
writeLines(c("step 22 over"),progress)
#close(progress)

png(filename=paste("C:/wamp/www/Maxent/uploads/",foldername,"/response.png",sep=''),width = 800, height = 600)
# #response curve generation
response(model.maxent)
dev.off()
writeLines(c("step 23 over"),progress)
close(progress)
# 
# #r <- predict(max, predictors, args=c("outputformat=raw"))
# 
# #testing
# # background data
# #bg <- randomPoints(predictors,1000)
# 
# #el <- evaluate(max,p=occtest,a=bg,x=predictors)
# 
# #plot(e1, 'ROC')
