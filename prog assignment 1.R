
rm(list=ls())

download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip",destfile="dataset.zip")
unzip("dataset.zip")

activity=read.csv("./activity.csv")
activity$date=as.Date(activity$date,"%Y-%m-%d")

by.var=list(date=activity$date,interval=activity$interval)

activity.sum<-aggregate(activity,by.var[2],mean)

head(activity.sum)



?aggregate
