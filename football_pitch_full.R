library('ggplot2')
library('ggthemes')

ggplot(data=data.frame(x=1,y=1),aes(x,y))+
###pitch:
geom_path(data=data.frame(x=c(-34,-34,34,34,-34),y=c(-52.5,52.5,52.5,-52.5,-52.5)))+
###halfway line:
geom_path(data=data.frame(x=c(-34,34),y=c(0,0)))+
###centre circle:
geom_path(data=data.frame(x=c(-9150:(-1)/1000,1:9150/1000),y=c(sqrt(9.15^2-c(-9150:(-1)/1000,1:9150/1000)^2))),aes(x=x,y=y))+
geom_path(data=data.frame(x=c(-9150:(-1)/1000,1:9150/1000),y=-c(sqrt(9.15^2-c(-9150:(-1)/1000,1:9150/1000)^2))),aes(x=x,y=y))+
##centre spot:
geom_point(aes(x = 0, y = 0), size = 0.5) +
##penalty spots:
geom_point(aes(x = 0, y = 41.5), size = 0.5) +
geom_point(aes(x = 0, y = -41.5), size = 0.5) +
###penalty arc:
geom_path(data=data.frame(x=c(-7280:(-1)/1000,1:7280/1000),y=c(41.5-sqrt(9.15^2-c(-7280:(-1)/1000,1:7280/1000)^2))),aes(x=x,y=y))+
geom_path(data=data.frame(x=c(-7280:(-1)/1000,1:7280/1000),y=-c(41.5-sqrt(9.15^2-c(-7280:(-1)/1000,1:7280/1000)^2))),aes(x=x,y=y))+
###6-yard box:
geom_path(data=data.frame(x=c(-9.16,-9.16,9.16,9.16),y=c(-52.5,-47,-47,-52.5)))+
geom_path(data=data.frame(x=-c(-9.16,-9.16,9.16,9.16),y=-c(-52.5,-47,-47,-52.5)))+
###goal
geom_path(data=data.frame(x=c(-3.66,-3.66,3.66,3.66),y=c(-52.5,-53.5,-53.5,-52.5)))+
geom_path(data=data.frame(x=c(-3.66,-3.66,3.66,3.66),y=-c(-52.5,-53.5,-53.5,-52.5)))+
###penalty area:
geom_path(data=data.frame(x=c(-20.15,-20.15,20.15,20.15),y=c(-52.5,-36,-36,-52.5)))+
geom_path(data=data.frame(x=c(-20.15,-20.15,20.15,20.15),y=c(52.5,36,36,52.5)))+
###fix aspect ratio to 1:1
coord_fixed() +
###remove all non-geom elements
theme_solid()
