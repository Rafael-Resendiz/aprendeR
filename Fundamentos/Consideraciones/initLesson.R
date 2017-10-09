# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.
      .get_course_path <- function(){
      tryCatch(aprendeR:::Fundamentos_courses_dir(),
         error = function(c) {file.path(find.package("Consideraciones"),"Courses")}
          )
      }

      mis_datos <- read.csv(file.path(.get_course_path(), "Fundamentos", "Consideraciones", "matriz1b.csv"))
