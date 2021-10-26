# An optional custom script to run before Hugo builds your site.
# You can delete it if you do not need it.

library(sf)
library(mapview)
library(leaflet)
library(leafpop)
library(htmlwidgets)
library(htmltools)


################ Manzanal
pnt <- data.frame(x = c(-76.5631,-76.56293, -76.56295), 
                  y = c(2.42499, 2.42432, 2.4242))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

img <- "D://BoxFiles/Box Sync/CodigoR/monitoreo-acustico/static/images/portfolio/audiomoth_100.png"

# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery", options=(maxZoom=16)) %>%  # Add default OpenStreetMap map tiles
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, popup="grabadora") %>%
  addPopupImages(img, group = "pnt")

# saveWidget(m, "static/maps/manzanal.html")

###################### Escondite
pnt <- data.frame(x = c(-76.5880582, -76.5899665, -76.5872261, -76.5847835), 
                  y = c(0.7922166, 0.7952134, 0.797477600000025, 0.7965501))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

img <- "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Mount_Eden.jpg/640px-Mount_Eden.jpg"

# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery") %>%
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, popup="grabadora")

# saveWidget(m, "static/maps/elescondite.html")

