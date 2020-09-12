e_quakes<-datasets::quakes

mean(e_quakes$lat,na.rm=T)
median(e_quakes$lat,na.rm=T)
var(e_quakes$lat,na.rm=T)
sd(e_quakes$lat,na.rm=T)
range(e_quakes$lat,na.rm=T)
summary(e_quakes$lat,na.rm=T)

mean(e_quakes$long,na.rm=T)
median(e_quakes$long,na.rm=T)
var(e_quakes$long,na.rm=T)
sd(e_quakes$long,na.rm=T)
range(e_quakes$long,na.rm=T)
summary(e_quakes$long,na.rm=T)

mean(e_quakes$depth,na.rm=T)
median(e_quakes$depth,na.rm=T)
var(e_quakes$depth,na.rm=T)
sd(e_quakes$depth,na.rm=T)
range(e_quakes$depth,na.rm=T)
summary(e_quakes$depth,na.rm=T)

mean(e_quakes$mag,na.rm=T)
median(e_quakes$mag,na.rm=T)
var(e_quakes$mag,na.rm=T)
sd(e_quakes$mag,na.rm=T)
range(e_quakes$mag,na.rm=T)
summary(e_quakes$mag,na.rm=T)

mean(e_quakes$stations,na.rm=T)
median(e_quakes$stations,na.rm=T)
var(e_quakes$stations,na.rm=T)
sd(e_quakes$stations,na.rm=T)
range(e_quakes$stations,na.rm=T)
summary(e_quakes$stations,na.rm=T)


summary(e_quakes,na.rm=T)


####Top 10 rows and last 10 rows
head(e_quakes,10)
tail(e_quakes,10)
######Columns

e_quakes[,c(1,2)]

df<-e_quakes[,-6]

e_quakes$lat

mean(e_quakes$lat)

summary(e_quakes[,1])
###########Summary of the data#########
summary(e_quakes$long)
summary(e_quakes)
########Visualization Techniques#############
plot(e_quakes$lat)
plot(e_quakes$lat,e_quakes$long,type="p")
plot(e_quakes)
# points and lines 
plot(e_quakes$lat, type= "l") # p: points, l: lines,b: both
plot(e_quakes$long, ylab = 'ozone Concentration', 
     xlab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')
# Horizontal bar plot
barplot(e_quakes$depth, main = 'depth of earcth quakes',
        ylab = 'earth quakes levels', col= 'blue',horiz = F,axes=T)
#Histogram
hist(e_quakes$mag)
hist(e_quakes$mag, 
     main = 'Earth quake mag',
     xlab = 'Earth quake.', col='blue')

#Single box plot
boxplot(e_quakes$depth,main="Boxplot")

# Multiple box plots
boxplot(e_quakes[,1:4],main='Multiple')

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="n")

plot(e_quakes$stations)
plot(e_quakes$stations, e_quakes$mag)
plot(e_quakes$stations, type= "l")
plot(e_quakes$stations, type= "l")
plot(e_quakes$stations, type= "l")
barplot(e_quakes$stations, main = 'earth quake depth',
        xlab = 'eartch quake levels', col='green',horiz = TRUE)
hist(e_quakes$stations)
boxplot(e_quakes$stations)
boxplot(e_quakes[,0:4], main='Multiple Box plots')
