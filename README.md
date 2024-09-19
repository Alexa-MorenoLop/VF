# Tarea de Programación en R e Interés Simple

*Alexa Moreno López*

*Licenciatura en Actuaría y Ciencia de Datos*


Es posible cargar las funciones realizadas por medio del siguiente comando.
```{r}
source("https://raw.githubusercontent.com/Alexa-MorenoLop/VF/main/VF.R")
```

# Funciones en R
Para crear una función en nuestro documento R Script se sigue la sintaxis:

```
Nombre_función = function( ){
cuerpo de la función

resultado=
return(resultado)
}
```
Es importante aclarar que dentro de los parentesis que acompañan a *function* se establecerán los argumentos de entrada con los cuales va a trabajar la función.
Respetando esta sintaxis es posible crear una gran variedad de funciones según nuestras necesidades y cálculos correspondientes.

Una vez teniendo nuestras funciones programadas y funcionales en nuestro R Script, es posibles cargarlas a un repositorio en github, donde se tendrá una liga de su versión "cruda" o raw. Un ejemplo de esto se encuentra al inicio del presente trabajo:
```{r}
https://raw.githubusercontent.com/Alexa-MorenoLop/VF/main/VF.R
```
Utilizando la función *source* a esta versión del archivo lograremos que sea posible acceder a las funciones contenidas en esté para cualquiera que copie y pegue esta función *source* en su workspace.
```{r}
source("https://raw.githubusercontent.com/Alexa-MorenoLop/VF/main/VF.R")
```

En nuestro caso, las funciones elaboradas de esta forma serán respecto al tema de *Interés Simple*.

# Ejercicio de Interés Simple

Se nos proporciona el siguiente problema a resolver:

"José Ignacio presta $1,000.00 a una tasa de interés simple del 24% durante 7 meses. Utilizando el año año natural, diga Usted el Monto que recibirá al final del préstamo."

Para la resolución de este tipo de problemas, es de nuestro conocimiento que existe una ecuación con la cual es posible calcular el Valor Futuro (VF) respecto a un Valor Actual o Presente (VA) agregandole los Intereses (I) devengados durante un cierto periodo en que se llevó a cabo la actividad financiera, como lo es un prestamo o inversión.

$$VF=VA+I$$

Sin embargo, al sustituir I por su equivaente se tendría:

$$VF=VA +(VA*r)$$

$$VF=VA*(1+(t*r))$$

Donde *t* corresponde al periodo de tiempo de la actividad financiera y *r* es la tasa de interés del periodo. Para tener un mayor conocimiento acerca del Interés Simple es posible revisar el tema en la siguiente liga ("https://oscardelatorretorres.shinyapps.io/02matFin02ProgAritIntSimple/").

Esta última será aquella que utilizaremos para nuestros cálculos en la resolución de problemas en este tema, denotandola como la *Ecuación General del Interés Simple*.
Encontraremos el Valor Final(VF), Valor Actual (VA), Intereses del Periodo (r) así como el Tiempo del Periodo (t), en base a despejes de está ecuación y gracias las funciones que ahora somos capaces de programar se hará más sencilla esta tarea.

Para esto, antes debemos identificar los datos de nuestro problema para facilitar la computación al momento de llevarlo a cabo.

```
Valor Actual (VA)= 1000.00

Tiempo del Periodo (t)= 7 meses

Intereses anualizados (i)= 24% = 0.24

Intereses del Periodo (r)= $((24%/7)*12 meses)$ = 14% = 0.14
```

**Calculo del Valor Futuro (VF)**
```{r}
#Se crea una función VF 
VF=function(VA,r,t){
  
  VFsalida=VA*(1+(r*t))
  
  VFtexto=paste0("El valor futuro es: ",VFsalida)
  listaVF=list(ValorFuturo=VFsalida,VFtexto=VFtexto)
  return(listaVF)
 }
#Aquí probamos que la función sea correcta con los datos del problema proporcionado

resultado =VF(VA=1000,r=0.14,t=7)
VF=resultado $ValorFuturo
print(resultado$VFtexto)
```
