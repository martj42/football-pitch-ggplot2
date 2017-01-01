library('ggplot2')
library('ggthemes')
ggplot(data=data.frame(x=1,y=1),aes(x,y))+
  ###grass:
  geom_rect(aes(xmin = -3, xmax = 71, ymin = -3, ymax = 38),fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = 0, xmax = 68, ymin = 29.5, ymax = 35),fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = 0, xmax = 68, ymin = 18.5, ymax = 24),fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = 0, xmax = 68, ymin = 6.5, ymax = 12.5),fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = 0, xmax = 68, ymin = -3, ymax = .5),fill = "darkolivegreen4", alpha = 0.7) +
  ###pitch:
  geom_path(data=data.frame(x=c(0,0,68,68),y=c(-3,35,35,-3)), colour = "white")+
  ##penalty spot:
  geom_point(aes(x = 34, y = 24), size = 1, colour = "white") +
  ###penalty arc:
  geom_path(data=data.frame(x=c(-7300:(-1)/1000,1:7300/1000)+34,y=-c(sqrt(9.15^2-c(-7300:(-1)/1000,1:7300/1000)^2))+24),aes(x=x,y=y), colour = "white")+
  ###corner arc:
  geom_path(data=data.frame(x=c(0:1000/1000),y=c(35-sqrt(1^2-c(0:1000/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(0:1000/1000)+67,y=c(35-sqrt(1^2-c(-1000:0/1000)^2))),aes(x=x,y=y), colour = "white")+
  ###corner lines:
  geom_path(data=data.frame(x=c(0,-0.5),y=c(25.85, 25.85)), colour = "white")+
  geom_path(data=data.frame(x=c(68,68.5),y=c(25.85, 25.85)), colour = "white")+
  geom_path(data=data.frame(x=c(9,9),y=c(35, 35.5)), colour = "white")+
  geom_path(data=data.frame(x=c(59,59),y=c(35, 35.5)), colour = "white")+
  ###6-yard box:
  geom_path(data=data.frame(x=c(24.85,24.85,43.15,43.15),y=c(35,29.5,29.5,35)), colour = "white")+
  ###goal
  geom_path(data=data.frame(x=c(30.35,30.35,37.67,37.67),y=c(35,36,36,35)), colour = "white")+
  ###penalty area:
  geom_path(data=data.frame(x=c(13.85,13.85,54.15,54.15),y=c(35,18.5,18.5,35)), colour = "white")+
  ###fix aspect ratio to 1:1
  coord_fixed() +
  ###remove all non-geom elements
  theme_solid()

