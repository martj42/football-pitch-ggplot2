library('ggplot2')
library('ggthemes')

ggplot(data=data.frame(x=1,y=1),aes(x,y))+
  ###grass:
  geom_rect(aes(xmin = -37, xmax = 37, ymin = -55.5, ymax = 55.5),
            fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = -34, xmax = 34, ymin = 0, ymax = 6),
            fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = -34, xmax = 34, ymin = 12, ymax = 18),
            fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = -34, xmax = 34, ymin = 24, ymax = 30),
            fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = -34, xmax = 34, ymin = 36, ymax = 41.5),
            fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = -34, xmax = 34, ymin = 47, ymax = 52.5),
            fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = -34, xmax = 34, ymin = -6, ymax = -12),
            fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = -34, xmax = 34, ymin = -18, ymax = -24),
            fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = -34, xmax = 34, ymin = -36, ymax = -30),
            fill = "darkolivegreen4", alpha = 0.7) +
  geom_rect(aes(xmin = -34, xmax = 34, ymin = -47, ymax = -41.5),
            fill = "darkolivegreen4", alpha = 0.7) +
  ###pitch:
  geom_path(data=data.frame(x=c(-34,-34,34,34,-34),y=c(-52.5,52.5,52.5,-52.5,-52.5)), colour = "white")+
  ###halfway line:
  geom_path(data=data.frame(x=c(-34,34),y=c(0,0)), colour = "white")+
  ###centre circle:
  geom_path(data=data.frame(x=c(-9150:(-1)/1000,1:9150/1000),y=c(sqrt(9.15^2-c(-9150:(-1)/1000,1:9150/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(-9150:(-1)/1000,1:9150/1000),y=-c(sqrt(9.15^2-c(-9150:(-1)/1000,1:9150/1000)^2))),aes(x=x,y=y), colour = "white")+
  ##centre spot:
  geom_point(aes(x = 0, y = 0), size = 0.5, colour = "white") +
  ##penalty spots:
  geom_point(aes(x = 0, y = 41.5), size = 0.5, colour = "white") +
  geom_point(aes(x = 0, y = -41.5), size = 0.5, colour = "white") +
  ###penalty arc:
  geom_path(data=data.frame(x=c(-7280:(-1)/1000,1:7280/1000),y=c(41.5-sqrt(9.15^2-c(-7280:(-1)/1000,1:7280/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(-7280:(-1)/1000,1:7280/1000),y=-c(41.5-sqrt(9.15^2-c(-7280:(-1)/1000,1:7280/1000)^2))),aes(x=x,y=y), colour = "white")+
  ###corner arcs:
  geom_path(data=data.frame(x=c(0:1000/1000)-34,y=c(52.5-sqrt(1^2-c(0:1000/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(0:1000/1000)-34,y=c(-52.5+sqrt(1^2-c(0:1000/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(0:1000/1000)+33,y=c(52.5-sqrt(1^2-c(-1000:0/1000)^2))),aes(x=x,y=y), colour = "white")+
  geom_path(data=data.frame(x=c(0:1000/1000)+33,y=c(-52.5+sqrt(1^2-c(-1000:0/1000)^2))),aes(x=x,y=y), colour = "white")+
  ###corner lines:
  geom_path(data=data.frame(x=c(-34,-34.5),y=c(43.35,43.35)), colour = "white") +
  geom_path(data=data.frame(x=c(-34,-34.5),y=c(-43.35,-43.35)), colour = "white") +
  geom_path(data=data.frame(x=c(34,34.5),y=c(43.35,43.35)), colour = "white") +
  geom_path(data=data.frame(x=c(34,34.5),y=c(-43.35,-43.35)), colour = "white") +
  geom_path(data=data.frame(x=c(-25.85,-25.85),y=c(52.5,53)), colour = "white") +
  geom_path(data=data.frame(x=c(25.85,25.85),y=c(52.5,53)), colour = "white") +
  geom_path(data=data.frame(x=c(-25.85,-25.85),y=c(-52.5,-53)), colour = "white") +
  geom_path(data=data.frame(x=c(25.85,25.85),y=c(-52.5,-53)), colour = "white") +
  ###6-yard box:
  geom_path(data=data.frame(x=c(-9.16,-9.16,9.16,9.16),y=c(-52.5,-47,-47,-52.5)), colour = "white")+
  geom_path(data=data.frame(x=-c(-9.16,-9.16,9.16,9.16),y=-c(-52.5,-47,-47,-52.5)), colour = "white")+
  ###goal
  geom_path(data=data.frame(x=c(-3.66,-3.66,3.66,3.66),y=c(-52.5,-53.5,-53.5,-52.5)), colour = "white")+
  geom_path(data=data.frame(x=c(-3.66,-3.66,3.66,3.66),y=-c(-52.5,-53.5,-53.5,-52.5)), colour = "white")+
  ###penalty area:
  geom_path(data=data.frame(x=c(-20.15,-20.15,20.15,20.15),y=c(-52.5,-36,-36,-52.5)), colour = "white")+
  geom_path(data=data.frame(x=c(-20.15,-20.15,20.15,20.15),y=c(52.5,36,36,52.5)), colour = "white")+
  ###fix aspect ratio to 1:1
  coord_fixed() +
  ###remove all non-geom elements
  theme_solid()
