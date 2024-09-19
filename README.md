# Tarea de Programación en R e Interés Simple

*Alexa Moreno López*

*Licenciatura en Actuaría y Ciencia de Datos*


Es posible cargar las funciones realizadas por medio del siguiente comando pegandolo en la consola de la terminal en su workspace. 
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

Es importante aclarar que dentro de los paréntesis que acompañan a *function* se establecerán los argumentos de entrada con los cuales va a trabajar la función.
Respetando esta estructura es posible crear una gran variedad de funciones según nuestras necesidades y cálculos correspondientes.

Una vez teniendo nuestras funciones programadas bajo esta sintaxis y siendo funcionales en nuestro R Script, es posibles cargarlas a un repositorio en github, donde se tendrá una liga de su versión "cruda" o raw. 
Un ejemplo de esto se encuentra al inicio del presente trabajo:
```{r}
https://raw.githubusercontent.com/Alexa-MorenoLop/VF/main/VF.R
```
Utilizando la función *source* a esta versión del archivo lograremos que sea posible acceder a las funciones contenidas en esté para cualquiera que copie y pegue esta función *source* en su workspace.
```{r}
source("https://raw.githubusercontent.com/Alexa-MorenoLop/VF/main/VF.R")
```

En nuestro caso, las funciones elaboradas de esta forma serán respecto al tema de *Interés Simple*.

# Ejercicio de Interés Simple

Para la resolución de este tipo de problemas relacionados al Interés Simple, es de nuestro conocimiento que existe una ecuación con la cual es posible calcular el Valor Futuro (VF) respecto a un Valor Actual o Presente (VA) agregándole los Intereses (I) devengados durante un cierto periodo en el que se llevó a cabo la actividad financiera, como lo es un préstamo o inversión.

$$VF=VA+I$$

Sin embargo, al sustituir I por su equivalente se tendría:

$$VF=VA +(VA*r)$$

$$VF=VA*(1+(t*r))$$

Donde *t* corresponde al periodo de tiempo de la actividad financiera y *r* es la tasa de interés del periodo. (Para tener un mayor conocimiento acerca del Interés Simple es posible revisar el tema en la siguiente liga: ("https://oscardelatorretorres.shinyapps.io/02matFin02ProgAritIntSimple/")).

Esta última será aquella que utilizaremos para nuestros cálculos en la resolución de problemas en este tema, denotandola como la *Ecuación General del Interés Simple*.
Encontraremos el Valor Final(VF), Valor Actual (VA), Intereses del Periodo (r) así como el Tiempo del Periodo (t), en base a despejes de está ecuación y gracias las funciones que ahora somos capaces de programar se hará más sencilla esta tarea.

Se nos proporciona el siguiente problema a resolver:

*"José Ignacio presta $1,000.00 a una tasa de interés simple del 24% durante 7 meses. Utilizando el año año natural, diga Usted el Monto que recibirá al final del préstamo."*

Para esto, antes debemos identificar los datos de nuestro problema para facilitar la computación al momento de llevarlo a cabo.

$ValorActual(VA)$= $1,000.00

$TiempoPeriodo(t)$= 7 meses

$InteresesAnualizados(i)$= 24% = 0.24

$InteresesPeriodo(r)$= 2% = 0.02

**Cálculo del Valor Futuro (VF)**
Con estos datos es posible llevar a cabo los cálculos necesarios con la función

```{r}
resultado =VFSimple(VA=1000,r=0.02,t=7)
```

**Calculo del Valor Actual (VA)**
```{r}
#Se crea una función VA despejando VA en la ecuación general.

VA=function(VF,r,t){
  
  VAsalida= VF/(1+(r*t))
#Se crea un objeto de texto 
  VAtexto=paste0("El Valor Actual es: ",VAsalida)
#Se crea una lista que contenga a ambos objetos
  listaVA=list(ValorActual=VAsalida,VAtexto=VAtexto)
  return(listaVA)
 }

#Aquí probamos que la función sea correcta con los datos del problema proporcionado

resultado =VA(VF=1140,r=0.02,t=7)
VA=resultado $ValorActual
print(resultado$VAtexto)
```

**Cálculo del Interes del Periodo (r)**
```{r}
#Se crea una función r despejando r en la ecuación general.

r=function(VF,VA,t){
  
 rsalida= (((VF/VA)-1)/t)
#Se crea un objeto de texto 
 rtexto=paste0("El Interés del Periodo es: ",rsalida)
#Se crea una lista que contenga a ambos objetos
 rlista=list(InteresPeriodo=rsalida,rtexto=rtexto)
 return(rlista)
 }

#Aquí probamos que la función sea correcta con los datos del problema proporcionado

resultado =r(VF=1140,VA=1000,t=7)
r=resultado$InteresPeriodo
print(resultado$rtexto)
```

**Cálculo del Tiempo del Periodo (t)**
```{r}

#Se crea una función t despejando t en la ecuación general.

t=function(VF,VA,r){
  
  tsalida= (((VF/VA)-1)/r)
#Se crea un objeto de texto 
  TiempoPtexto=paste0("El tiempo del periodo es: ",tsalida)
#Se crea una lista que contenga a ambos objetos
  tlista=list(TiempoPeriodo=tsalida,TiempoPtexto=TiempoPtexto)
  return(tlista)
 }
 
#Aquí probamos que la función sea correcta con los datos del problema proporcionado

resultado= t(VF=1140,VA=1000,r=0.02)
t=resultado$TiempoPeriodo
print(resultado$TiempoPtexto)
```



