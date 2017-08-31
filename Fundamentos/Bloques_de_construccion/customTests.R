# Put custom tests in this file.
      
      # Uncommenting the following line of code will disable
      # auto-detection of new variables and thus prevent swirl from
      # executing every command twice, which can slow things down.
      
      # AUTO_DETECT_NEWVAR <- FALSE
      
      # However, this means that you should detect user-created
      # variables when appropriate. The answer test, creates_new_var()
      # can be used for for the purpose, but it also re-evaluates the
      # expression which the user entered, so care must be taken.


# Identifique el estado del curso aprendeR
obtenerEstado <- function(){
      
  # Siempre que aprendeR esté en ejecución, su devolución de llamada estará en la parte superior de su pila de llamadas.
  # El estado de aprendeR, denominado e, se almacena en el entorno de la devolución de llamada.   
  environment(sys.function(1))$e
}

# Mientras que, para obtener el valor que un usuario ingresó directamente o, 
# que se calculó por el comando que él o ella entró.
obtenerValor <- function(){
  obtenerEstado()$val
}

# O para obtener la última expresión que el usuario introdujo en la consola R.
obtenerExpresion <- function(){
  obtenerEstado()$expr
}

notificar <- function(){
  e <- get("e", parent.frame())
  if(e$val == "No") return(TRUE)
  
  good <- FALSE
  while(!good) {  
      
      
    Nombre <- readline("¿Cuál es su nombre completo? ")
    emaila <- readline("¿Cuál es la dirección de correo electrónico en la que desea ser notificado de sus avances? ")

    # Repeat back to them
    message("\n¿Todo está bien?\n")
    message("Su nombre es: ", name, "\n", "La dirección de envío es: ", address)
    
    sn <- select.list(c("Si", "No"), graphics = FALSE)
    if(sn == "Si") good <- TRUE
  }
  
  # Get course and lesson names
  Curso <- attr(e$les, "course_name")
  Leccion <- attr(e$les, "lesson_name")
  
  asunto <- paste(Nombre, "recien terminado", Curso, "-", Leccion)
  desarrollo = ""
  
  # Send email
  aprendeR:::email(emaila, asunto, desarrollo)
  
  hrule()
  message("Acabo de intentar crear un nuevo correo electrónico con la siguiente información:\n")
  message("To: ", emaila)
  message("Subject: ", asunto)
  message("Desarrollo: <empty>")
  
  message("\nSi no funcionó, puede enviar el mismo correo electrónico manualmente.")
  hrule()
  
  # Devolver TRUE para cumplir con lo que solicita aprendeR y volver al menú de curso
  TRUE
}

readline_clean <- function(prompt = "") {
  wrapped <- strwrap(prompt, width = getOption("width") - 2)
  mes <- stringr::str_c("| ", wrapped, collapse = "\n")
  message(mes)
  readline()
}

hrule <- function() {
  message("\n", paste0(rep("#", getOption("width") - 2), collapse = ""), "\n")
}
        
        
        
#    token <- readline("What is your assignment token? ") 
#    payload <- sprintf('{  
#      "assignmentKey": "ZRVmbK5hEeW24RJH5gkutw",
#      "submitterEmail": "%s",  
#      "secret": "%s",  
#      "parts": {  
#        "fyjXt": {  
#          "output": "correct"  
#        }  
#      }  
#    }', email, token)
#    url <- 'https://www.coursera.org/api/onDemandProgrammingScriptSubmissions.v1'
#  
#    respone <- httr::POST(url, body = payload)
#    if(respone$status_code >= 200 && respone$status_code < 300){
#      message("Grade submission succeeded!")
#    } else {
#      message("Grade submission failed.")
#      message("Press ESC if you want to exit this lesson and you")
#      message("want to try to submit your grade at a later time.")
#      return(FALSE)
#    }
#  }
#  TRUE
#}
