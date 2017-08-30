# aprendeR

[![Build Status](https://unim.mx.png?branch=master)](https://unim.mx/aprendeR/aprendeR)
[![CRAN version](http://www.r-pkg.org/badges/version/aprendeR?color=3399ff)](https://cran.r-project.org/package=aprendeR)
[![Downloads](http://cranlogs.r-pkg.org/badges/aprendeR?color=3399ff)](http://cran-logs.rstudio.com/)


### [http://unim.mx/aprendeR](http://unim.mx/aprendeR/aprendeR.html)

## ¡Bienvenido al primer curso para aprendeR R en R!

Espero que estos cursos le sirvan no solamente como recursos interactivas, sino también, como ejemplo para que usted pueda ser parte de los autores de nuevos cursos relacionados con R.

```
Es menester aclarar que existen dos tipos de cursos:

El primer grupo de cursos, culminan con pruebas personalizadas, 
pero solamente cubren aspectos básicos.

El segundo grupo de cursos, abarca temas especiales como el graficado y diseño, 
así como temas introductorios a minería de datos.
```
Probablemente estos útimos temas sean más útiles como puntos de partida para crear material propio.
Debe tener en cuenta que las primeras lecciones son para tener una perspectiva rápida...


Quizá incluso le sirvan a usted para escribir una buena lección con un mínimo esfuerzo.

He de comentar que estos cursos siguen el diseño del paquete <b>swirl</b> y <b>swirlify</b>, por lo que agradecemos el esfuerzo realizado por todo el equipo de <b>Swirl Coder's</b>.


De la misma manera, <b>aprendeR</b> pretende convertirse en una plataforma tanto para aprender, como para enseñar algunas cuestiones sobre fundamentos y principios báscios de matemáticas y de la programación en R de manera simultánea e interactiva. Para ello, se ha dispuesto una selección de cursos, que contemplan diversas lecciones, para que cualquier profesor pueda actuar interactivamente como tutor de un estudiante a través de ellos. 

Durante el curso se puede solicitar a un estudiante que vea un video, que responda a una pregunta de opción múltiple, que llene los espacios en blanco, o bien, que ingrese datos o comandos en la consola R exactamente como si estuviera usando R en la práctica. El énfasis está en estas últimas opciones, ya que mediante la interacción con la consola R, se comprueba la certeza de las respuestas de los usuarios y se dan sugerencias si es apropiado. 

El progreso del usuario se guarda automáticamente para que pueda salir de la plataforma cuando el mismo usuario lo considere necesario, sin que ello sea obstáculo para que más tarde pueda reanudar sus lecciones sin perder el trabajo.

Los cursos de <b>aprendeR</b> enfatizan la importancia del aprendizaje de los estudiantes de R, mediante e ejercitar el uso frecuente y directo de la consola de R. Se proveerá de un mecanismo de retorno de llamada, que fue sugerido y demostrado por primera vez para este propósito por Hadley Wickham, por medio de dicho mecanismo, se capturará la opinión de los estudiantes, para proporcionar una retroalimentación inmediata relevante para mejorar el material del curso actual.

[enseñaR] (https://github.com/Rafael-Resendiz/enseñaR) es un paquete R independiente que proporciona una caja de herramientas completa para los instructores de cursos en R. El contenido está escrito en [YAML] (http://en.wikipedia.org/wiki/YAML) utilizando las útiles herramientas descritas en la página [instructores] (http://unim.mx/aprendeR/instructoR.html) de nuestro sitio web.

El programa inicia con `aprendeR ()`. Las funciones que controlan el comportamiento de los cursos de aprendeR son `bye ()` para salir, `skip ()` para saltar una pregunta, `main ()` para volver al menú principal, `play ()` para permitir la experimentación en la consola R sin interferencias de aprendeR, `nxt ()` para reanudar la interacción con aprendeR, e `info ()` para mostrar un menú de ayuda.

## Prerrequisitos

Para acceder a este curso debes tener instalado <b>R</b>, pero, será mucho mejor si instalas también <b>RStudio</b>, así como el paquete <b>swirl</b>, <b>swirlify</b>, <b>rmarkdown</b> y, a<b>Latex</b> en cualquiera de sus versiones.


## Instalación de aprendeR (desde CRAN)

La forma más sencilla de instalar y ejecutar <b>aprendeR</b> es escribiendo lo siguiente desde la consola de R:

```
Install.packages ("aprendeR")
Biblioteca (aprendeR)
aprendeR()
```

Espero que con el transcurso del tiempo a medida que se sigan agregando nuevas características y contenido, se vayan creando nuevas versiones disponibles en CRAN según sea el caso (lo más probable es que esto pasará en periodos trimestrales).

## Instalando la última versión de desarrollo (desde GitHub)

Esperamos que muy pronto pueda acceder a las funciones y contenido más recientes, mediante la instalación y ejecución de la versión de desarrollo de <b>aprendeR</b> utilizando el paquete [devtools (https://github.com/hadley/devtools):

```
Install.packages ("devtools")
Devtools :: install_github ("aprendeR", ref = "dev")
Biblioteca (aprendeR)
aprendeR()
```

## Contribuyendo al desarrollo de aprendeR

Si desea participar, guarde este repositorio y realiza una nueva versión con tus propias innovaciones,  posteriormente envíe una solicitud para implementar los cambios propuestos en la versión principal. Estaré entusiasmado de conversar con usted si tiene alguna pregunta sobre el código fuente.

## Utilizar aprendeR en el aula

Esperamos que los instructores hispano-parlantes de todo el mundo contribuyan para mejorar esta inicativa, no solamente usando <b>aprendeR</b> en sus aulas, sino también creando ms cursos en la bella lengua de Cervantes, engrosando la lista de <b>"OSLaR Coders"</b> (Open Source Latinoamerican R Coders). Condidero que este es un proyecto impresionantemente ambicioso, pero posible. 

Si usted es un instructor, por favor no dude en hacer lo mismo - de forma gratuita. Es decir, que aun cuando no estoy en contra de que sus estudiantes paguen para tomar un curso sobre R, aprender sobre algún contenido de índole computacional o matemático, o simplemente asistir a su institución, le exhorto que no cobre a las personas <mark>directamente</mark> por el uso de este software o contenido educativo, así como de otros similares.

Si no está seguro acerca de un caso de uso en particular, no dude en enviarnos un correo electrónico a rafael.resendiz@uabc.edu.mx.
