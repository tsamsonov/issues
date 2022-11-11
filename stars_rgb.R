library(stars)

img = read_stars('https://raw.githubusercontent.com/tsamsonov/r-geo-course/master/data/world/BlueMarbleJuly.tif')

plot(st_rgb(img)) # works fine

img_prj = st_warp(img, crs = '+proj=moll', use_gdal = T)

plot(st_rgb(img_prj), rgb = 1:3) # error
