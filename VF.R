
#Ejercicio Interés Simple
#Tarea
#Jose Ignacio presta $1,000.00 a una tasa de interés simple del 24% durante 7 meses.
#Utilizando año natural, diga Usted el Monto que recibirá al final del préstamo.

#Calculo del Valor Futuro (VF)

#Se crea una función VF 
VF=function(VA,r,t){
  
  VFsalida=VA*(1+(r*t))
  
  VFtexto=paste0("El valor futuro es: ",VFsalida)
  listaVF=list(ValorFuturo=VFsalida,VFtexto=VFtexto)
  return(listaVF)
 }
#Aquí probamos que la función sea correcta con los datos del problema proporcionado

#resultado =VF(VA=1000,r=0.14,t=7)
#VF=resultado $ValorFuturo
#print(resultado$VFtexto)


#Calculo del Valor Actual (VA)

#Se crea una función VA despejando en la ecuación general.

VA=function(VF,r,t){
  
  VAsalida= VF/(1+(r*t))
  VAtexto=paste0("El Valor Actual es: ",VAsalida)
  listaVA=list(ValorActual=VAsalida,VAtexto=VAtexto)
  return(listaVA)
 }

#Aquí probamos que la función sea correcta con los datos del problema proporcionado

#resultado =VA(VF=1980,r=0.14,t=7)
#VA=resultado $ValorActual
#print(resultado$VAtexto)


#Calcular el interes del periodo (r)

#Se crea una función r despejando en la ecuación general.

r=function(VF,VA,t){
  
 rsalida= (((VF/VA)-1)/t)
 rtexto=paste0("El Interés del Periodo es: ",rsalida)
 rlista=list(InteresPeriodo=rsalida,rtexto=rtexto)
 return(rlista)
 }

#Aquí probamos que la función sea correcta con los datos del problema proporcionado

#resultado =r(VF=1980,VA=1000,t=7)
#r=resultado$InteresPeriodo
#print(resultado$rtexto)


#Calcular el tiempo del periodo (t)

#Se crea una función t despejando en la ecuación general.

t=function(VF,VA,r){
  
  tsalida= (((VF/VA)-1)/r)
  TiempoPtexto=paste0("El tiempo del periodo es: ",tsalida)
  tlista=list(TiempoPeriodo=tsalida,TiempoPtexto=TiempoPtexto)
  return(tlista)
 }
 
#Aquí probamos que la función sea correcta con los datos del problema proporcionado

#resultado= t(VF=1980,VA=1000,r=0.14)
#t=resultado$TiempoPeriodo
#print(resultado$TiempoPtexto)


