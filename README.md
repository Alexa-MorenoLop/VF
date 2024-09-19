# Tarea de Programación en R e Interés Simple

*Alexa Moreno López*

*Licenciatura en Actuaría y Ciencia de Datos*


Es posible cargar las funciones realizadas por medio del siguiente comando pegandolo en la consola de su workspace. 
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

Una opción que se nos pone a disposición al momento de programar funciones en R es la creación de *objetos tipo lista* en los cuales es posible agregar varios objetos los cuales serán llamados con la linea *return*, logrando un acabado más limpio o de mayor entendimiento al ejecutar la función. 
Un ejemplo:

```
#Creamos nuestra función con la sintaxis ya conocida.
VF=function(VA,r,t){
 xsalida=VA*(1+(r*t))
 #Creamos una cadena de texto con el resultado.
 textoSalida=paste0("El valor futuro es:",xsalida)
 #Creamos una lista de objetos, funcional para extraer varios objetos a la vez.
 objetoSalida=list(valorFuturo=xsalida,textoSalida=textoSalida)
return(objetoSalida)
}
```
Una vez teniendo nuestras funciones programadas, bajo esta sintaxis, y siendo funcionales en nuestro R Script, es posibles cargarlas a un repositorio en github, donde se tendrá una liga de su versión "cruda" o raw. 
Un ejemplo de esto sería:
```{r}
https://raw.githubusercontent.com/Alexa-MorenoLop/VF/main/VF.R
```

Al copiar esta URL y aplicando la función *source* a esta versión del archivo lograremos que sea posible acceder a las funciones contenidas en esté para cualquiera que copie y pegue esta función *source* en su workspace. Así quedaría:
```{r}
source("https://raw.githubusercontent.com/Alexa-MorenoLop/VF/main/VF.R")
```

En nuestro caso, las funciones elaboradas de esta forma serán respecto al tema de *Interés Simple*.

# Ejercicio de Interés Simple

Para la resolución de este tipo de problemas relacionados al Interés Simple, es de nuestro conocimiento que existe una ecuación con la cual es posible calcular el Valor Futuro (VF) respecto a un Valor Actual o Presente (VA) agregándole los Intereses (I) devengados durante un cierto periodo en el que se llevó a cabo una actividad financiera, como lo es un préstamo o una inversión.

$$VF=VA+I$$

Sin embargo, al sustituir I por su equivalente se tendría:

$$VF=VA +(VA*r)$$

$$VF=VA*(1+(t*r))$$

Donde *t* corresponde al periodo de tiempo de la actividad financiera y *r* es la tasa de interés del periodo. (Para tener un mayor conocimiento acerca del Interés Simple es posible revisar el tema en la siguiente liga: ("https://oscardelatorretorres.shinyapps.io/02matFin02ProgAritIntSimple/")).

Esta última ecuación será aquella que utilizaremos para nuestros cálculos en la resolución de problemas en este tema, denotada como la *Ecuación General del Interés Simple*.
Encontraremos el Valor Final(VF), Valor Actual (VA), Intereses del Periodo (r) así como el Tiempo del Periodo (t), en base a despejes de está ecuación general y gracias a las funciones que ahora somos capaces de programar se hará más sencilla esta tarea.

Se nos proporciona el siguiente problema a resolver:

*"José Ignacio presta $1,000.00 a una tasa de interés simple del 24% durante 7 meses. Utilizando el año año natural, diga Usted el Monto que recibirá al final del préstamo."*

Para esto, antes debemos identificar los datos de nuestro problema para facilitar la computación al momento de llevarla a cabo.

$ValorActual(VA)$= $1,000.00

$TiempoPeriodo(t)$= 7 meses

$InteresesAnualizados(i)$= 24% = 0.24

$InteresesPeriodo(r)$= 2% = 0.02

Con estos datos es posible realizar los cálculos para obtener los distintos valores del Interés Simple.

**Cálculo del Valor Futuro (VF)**

Utilizando la Ecuación General del Interés simple $VF=((VA*(1+(t*r)))$ podemos llegar directamente al resultado.

```{r}
#Probamos que la función sea correcta con los datos del problema proporcionado.
 # Proporcionamos los valores de entrada con los cuales trabajará la función dentro de los paréntesis.
  resultado =VFSimple(VA=1000,r=0.02,t=7)
  VFSimple= resultado$ValorFuturoSimple
 #Imprimimos nuestro resultado.
  print(resultado$VFSimpleTexto)
```

**Calculo del Valor Actual (VA)**

Considerando que se ha despejado VA en la ecuación general se puede calcular:

```{r}
#Probamos que la función sea correcta con los datos del problema proporcionado.
 # Proporcionamos los valores de entrada con los cuales trabajará la función dentro de los paréntesis.
  resultado =VA(VF=1140,r=0.02,t=7)
  VA=resultado $ValorActual
 #Imprimimos nuestro resultado.
  print(resultado$VAtexto)
```

**Cálculo del Interes del Periodo (r)**

De igual forma, tomemos el despeje de r en la ecuación general logrando obtener su valor.

```{r}
#Probamos que la función sea correcta con los datos del problema proporcionado.
 #Proporcionamos los valores de entrada con los cuales trabajará la función dentro de los paréntesis.
  resultado =r(VF=1140,VA=1000,t=7)
  r=resultado$InteresPeriodo
 #Imprimimos nuestro resultado.
  print(resultado$rtexto)
```

**Cálculo del Tiempo del Periodo (t)**

Por último, para cálcular t se sigue el mismo procedimiento a la hora del despeje para obtener el resultado.

```{r}
#Probamos que la función sea correcta con los datos del problema proporcionado.
 #Proporcionamos los valores de entrada con los cuales trabajará la función dentro de los paréntesis.
  resultado= t(VF=1140,VA=1000,r=0.02)
  t=resultado$TiempoPeriodo
 #Imprimimos nuestro resultado.
  print(resultado$TiempoPtexto)
```



