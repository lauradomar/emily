# Library
library(ggmap)
library(gridExtra)

# For stamen map, you have to give the extremity of the window you are looking at. here is an example with the watercolor background (Around brisbane)

# Oxford area: 51.651687, -1.362258, 51.831207, -1.030414
map <- get_stamenmap( bbox = c(left = -1.36, bottom = 51.65, right = -1.03, top = 51.83), zoom = 12, maptype = "watercolor")
ggmap(map) + 
  theme_void() + 
  ggtitle('Emilys Oxford') +
  theme(
    plot.title = element_text(colour = "orange"), 
    panel.border = element_rect(colour = "grey", fill=NA, size=2)
  )

