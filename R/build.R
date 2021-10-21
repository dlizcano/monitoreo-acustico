# An optional custom script to run before Hugo builds your site.
# You can delete it if you do not need it.

library(sf)
library(mapview)
library(leaflet)
pnt <- data.frame(x = c(-76.563,-76.56293, -76.56295), 
                  y = c(2.42412, 2.42432, 2.4242))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

img <- "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Mount_Eden.jpg/640px-Mount_Eden.jpg"

# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles(providers$Esri.WorldImagery) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, popup="grabadora")

