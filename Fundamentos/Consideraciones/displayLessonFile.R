# Este archivo debe desplegar el archivo lesson.yaml de la lección de consideraciones.
# display_swirl_file("lesson.yaml", "Fundamentos", "Consideraciones")


file <- system.file("lesson.yaml", package="Consideraciones")
cat("Displaying: ", file, ":\n", sep="")
displayCode(file)

file.show(file.path('~/aprendeR/Fundamentos/Consideraciones', "lesson.yaml"))
