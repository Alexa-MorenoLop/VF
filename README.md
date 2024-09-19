# Tarea de Programación en R e Interés Simple

*Alexa Moreno López*

*Licenciatura en Actuaría y Ciencia de Datos*


Es posible cargar las funciones realizadas por medio del siguiente comando.
```{r}
source("https://raw.githubusercontent.com/Alexa-MorenoLop/VF/main/VF.R")
```

# Funciones en R
Para crear una función en nuestro documento R Script se sigue la sintaxis:

```{r}

Nombre_función = function( ){
cuerpo de la función

resultado=
return(resultado)
}
```
Es importante aclarar que dentro de los parentesis que acompañan a *function* se establecerán los argumentos de entrada con los cuales va a trabajar la función.
Respetando esta sintaxis es posible crear una gran variedad de funciones según nuestras necesidades y cálculos correspondientes.

Una vez teniendo nuestras funciones programadas y funcionales, es posibles cargarlas a un repositorio en github



En nuestro caso, lo haremos respecto al tema de *Interés Simple*.

# Ejercicio de Interés Simple

Se nos proporciona un problema a resolver:
"José Ignacio presta $1,000.00 a una tasa de interés simple del 24% durante 7 meses. Utilizando el año año natural, diga Usted el Monto que recibirá al final del préstamo."

Para la resolución de este tipo de problemas, es de nuestro conocimiento que existe una ecuación con la cual es posible calcular el Valor Futuro (VF) respecto a un Valor Actual o Presente (VA) agregandole los Intereses (I) devengados durante un cierto periodo en que se llevó a cabo la actividad financiera, como lo es un prestamo o inversión.

$$VF=VA+I$$

Sin embargo, al sustituir I por su equivaente se tendría:

$$VF=VA +(VA*r)$$

$$VF=VA*(1+(t*r))$$

Donde t corresponde al periodo de tiempo de la actividad financiera y r es la tasa de interés del periodo.(Para tener un mayor conocimiento acerca del Interés Simple es posible revisar el tema en la siguiente liga ("https://oscardelatorretorres.shinyapps.io/02matFin02ProgAritIntSimple/")).

Esta última ecuación será aquella que utilizaremos para nuestros cálculos en la resolución del problema. Enontraremos el Valor Final(VF), Valor Actual (VA), Intereses del Periodo (r) así como el Tiempo del Periodo (t), todo esto en base a las funciones que ahora somos capaces de programar.

*
