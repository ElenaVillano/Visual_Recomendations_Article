# Graficos para artículo
library(ggplot2)
library(datasauRus)
library(tidyverse)
theme_set(theme_minimal(base_size = 14))

colores <- c('#38A6A5','#99C935','#EDAD08','#ee4d5b','royalblue','aquamarine3','turquoise3')
datasauRus::box_plots


dataz %>% 
  filter(dataset=='dino') %>% 
  ggplot(aes(x=x, y=y))+
  geom_point()+
#  theme_void()+
  theme(legend.position = "none")


+
  facet_wrap(~dataset, ncol=3)

categories <- c('away','dino','slant down')
holi <- filter(datasaurus_dozen, dataset=='dino'| dataset=='slant_down' | dataset=='away' )

slant <- filter(datasaurus_dozen, dataset=='slant_down')



ggplot(holi, aes(x=x, y=y, colour=dataset))+
  geom_point(size=0.001,alpha=0.9)+
  theme(legend.position = "none")+
  facet_wrap(~dataset, ncol=3)+
  theme(panel.grid.major.y = element_line(size=0.1),
        panel.grid.major.x = element_line(size=0.1),
        panel.grid.minor.y = element_line(size=0.1),
        panel.grid.minor.x = element_line(size=0.1),
        plot.margin = margin(0, 0.2, 0, 0, "cm"), 
        axis.text.x = element_text(size=2),
        axis.text.y = element_text(size=2),
        axis.title.x = element_text(size=3),
        axis.title.y = element_text(size=3),
        strip.text = element_text(size=3)) +
  scale_color_manual(values = colores)+
  ggsave("datasaurus.png",units = 'cm',width = 5,height = 2.5)









