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

img <- "https://monitoreo-acustico.netlify.app/images/portfolio/audiomoth_100.png"
img3 <- c(img,img,img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery", options=(maxZoom=15)) %>%  # Add default OpenStreetMap map tiles
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img3, group = "points") %>%
  addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/manzanal.html")

###################### Escondite
pnt <- data.frame(x = c(-76.5880582, -76.5899665, -76.5872261, -76.5847835), 
                  y = c(0.7922166, 0.7952134, 0.797477600000025, 0.7965501))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

# img <- "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Mount_Eden.jpg/640px-Mount_Eden.jpg"
img4 <- c(img,img,img, img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery") %>%
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img4, group = "points") %>%
  addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/elescondite.html")

###################### Amargal
pnt <- data.frame(x = c(-77.50061827305848, -77.5016436, -77.50175), 
                  y = c(5.586696526369948, 5.5716148, 5.57292))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

# img <- "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Mount_Eden.jpg/640px-Mount_Eden.jpg"
# img4 <- c(img,img,img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery") %>%
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img3, group = "points") %>%
  addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/amargal.html")

###################### Selva Mojada
pnt <- data.frame(x = c(-77.5059245, -77.5042039, -77.5026732862112, -77.5050445), 
                  y = c(5.5572836, 5.5585078, 5.5586892899632545, 5.558821))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

# img <- "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Mount_Eden.jpg/640px-Mount_Eden.jpg"
# img4 <- c(img,img,img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery") %>%
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img4, group = "points") %>%
  addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/selvamojada.html")

###################### Donde se oculta el sol Fredy y Aide
pnt <- data.frame(x = c(-76.6608143, -76.6617136, -76.6656325, -76.6734020168462, -76.6703596), 
                  y = c(1.0028044, 1.0026861, 1.0104551, 0.9992576059295994, 1.00749400000002))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

# img <- "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/Mount_Eden.jpg/640px-Mount_Eden.jpg"
# img4 <- c(img,img,img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )
img5 <- c(img,img,img, img, img)

m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery") %>%
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img5, group = "points") %>%
  addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/dondeseocultaelsol.html")

##################################################### Fin del Mundo
pnt <- data.frame(x = c(-76.6145727,-76.6181833), 
                  y = c(1.1001995, 1.1004451))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

img <- "https://monitoreo-acustico.netlify.app/images/portfolio/audiomoth_100.png"
img2 <- c(img,img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery", options=(maxZoom=16)) %>%  # Add default OpenStreetMap map tiles
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img2, group = "points") %>%
    addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/findelmundo.html")



##################################################### Selva Vides
pnt <- data.frame(x = c(-76.7558814,-76.7587158, -76.7627653, -76.7540529), 
                  y = c(0.8813604, 0.8822716, 0.8872957, 0.8868503))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

img <- "https://monitoreo-acustico.netlify.app/images/portfolio/audiomoth_100.png"
img4 <- c(img,img, img,img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery", options=(maxZoom=16)) %>%  # Add default OpenStreetMap map tiles
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img4, group = "points") %>%
  addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/selvavides.html")



##################################################### Altagracia Buenaventura
pnt <- data.frame(x = c(-70.770576), 
                  y = c(5.340836))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

img <- "https://monitoreo-acustico.netlify.app/images/portfolio/audiomoth_100.png"
img1 <- c(img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery", options=(maxZoom=16)) %>%  # Add default OpenStreetMap map tiles
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img1, group = "points") %>%
  addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/buenaventura.html")


##################################################### Altagracia La Sonrisa
pnt <- data.frame(x = c(-70.85726), 
                  y = c(5.37056))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

img <- "https://monitoreo-acustico.netlify.app/images/portfolio/audiomoth_100.png"
img1 <- c(img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery", options=(maxZoom=16)) %>%  # Add default OpenStreetMap map tiles
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img1, group = "points") %>%
  addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/lasonrisa.html")

##################################################### Altagracia San Andres
pnt <- data.frame(x = c(-70.844001), 
                  y = c(5.301507))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

img <- "https://monitoreo-acustico.netlify.app/images/portfolio/audiomoth_100.png"
img1 <- c(img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery", options=(maxZoom=16)) %>%  # Add default OpenStreetMap map tiles
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img1, group = "points") %>%
  addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/sanandres.html")

##################################################### Altagracia San Cristobal
pnt <- data.frame(x = c(-70.815833), 
                  y = c(5.326944))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

img <- "https://monitoreo-acustico.netlify.app/images/portfolio/audiomoth_100.png"
img1 <- c(img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery", options=(maxZoom=16)) %>%  # Add default OpenStreetMap map tiles
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img1, group = "points") %>%
  addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/sancristobal.html")

##################################################### Altagracia El Limonal
pnt <- data.frame(x = c(-70.874), 
                  y = c(5.38))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

img <- "https://monitoreo-acustico.netlify.app/images/portfolio/audiomoth_100.png"
img1 <- c(img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery", options=(maxZoom=16)) %>%  # Add default OpenStreetMap map tiles
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img1, group = "points") %>%
  addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/limonal.html")

##################################################### Altagracia la Palmera
pnt <- data.frame(x = c(-70.813664531729), 
                  y = c(5.3504965097124))
pnt_sf <- st_as_sf(pnt, coords = c("x", "y"), crs = 4326)

img <- "https://monitoreo-acustico.netlify.app/images/portfolio/audiomoth_100.png"
img1 <- c(img)
# mapview(pnt, 
#        map.types = "Esri.WorldImagery",
#        zoom =17
#        #popup = popupImage(img, src = "remote"),
#                           )


m <- leaflet() %>%
  addProviderTiles("Esri.WorldImagery", options=(maxZoom=16)) %>%  # Add default OpenStreetMap map tiles
  addProviderTiles("Stamen.TerrainLabels", options =c(opacity=0.5)) %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=pnt$x, lat=pnt$y, group = "points") %>%
  addPopupImages(img1, group = "points") %>%
  addMiniMap(
    tiles = providers$Esri.WorldStreetMap,
    toggleDisplay = TRUE)

# saveWidget(m, "static/maps/palmera.html")

