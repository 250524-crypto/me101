# --- PUNTO 15: Degradado de grises ---
# Reconstruye el degradado de 5x5
gris <- matrix(rep(seq(0, 255, length.out = 5), each = 5), nrow = 5, ncol = 5, byrow = TRUE)

# Verifica dim() y mean()
print(dim(gris))
print(mean(gris))

# Ver imagen en RStudio (se traspone e invierte para que se vea recta)
image(1:5, 1:5, t(gris[5:1, ]), col = gray.colors(256, start = 0, end = 1), useRaster = TRUE, main = "Gris 5x5")


# --- PUNTO 16: Imagen RGB de dos mitades ---
# Reconstruye la imagen RGB de 4x4
rgb <- array(0, dim = c(4, 4, 3))
rgb[, 1:2, 1] <- 255  # Mitad izquierda: Rojo
rgb[, 3:4, 3] <- 255  # Mitad derecha: Azul

# Verifica los píxeles extremos
print(dim(rgb))
print(rgb[1, 1, ])  # [255, 0, 0]
print(rgb[1, 4, ])  # [0, 0, 255]

# Ver imagen RGB en RStudio (usando el paquete grid o as.raster)
plot(as.raster(rgb / 255), main = "RGB (Rojo / Azul)")


# --- PUNTO 17: Luminosidad ponderada ---
# Formula de luminosidad
gris_luminosidad <- 0.299 * rgb[, , 1] + 0.587 * rgb[, , 2] + 0.114 * rgb[, , 3]

print(gris_luminosidad)

# Ver imagen de luminosidad
image(1:4, 1:4, t(gris_luminosidad[4:1, ]), col = gray.colors(256, start = 0, end = 1), useRaster = TRUE, main = "Gris Luminosidad")

