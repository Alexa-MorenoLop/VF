
#Ejercicio Interés Simple_Tarea

#Jose Ignacio presta $1,000.00 a una tasa de interés simple del 24% durante 7 meses.
#Utilizando año natural, diga Usted el Monto que recibirá al final del préstamo.

#Calculo del Valor Futuro (VF)

#Se crea una función VFSimple basada en la ecuación general de Interés Simple.

VFSimple=function(VA,r,t){
  
  VFSimpleSalida= VA*(1+(r*t))
  
  #Se crea un objeto de texto
  VFSimpleTexto=paste0("El Valor Futuro Simple es: ",VFSimpleSalida)
  
  #Se crea una lista que contenga a ambos objetos
  listaVFSimple=list(ValorFuturoSimple=VFSimpleSalida,VFSimpleTexto=VFSimpleTexto)
  return(listaVFSimple)
  
}

#Aquí probamos que la función sea correcta con los datos del problema proporcionado

#resultado =VFSimple(VA=1000,r=0.02,t=7)
#VFSimple=resultado $ValorFuturoSimple
#print(resultado$VFSimpleTexto)

#Calculo del Valor Actual (VA)

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

#resultado =VA(VF=1140,r=0.02,t=7)
#VA=resultado $ValorActual
#print(resultado$VAtexto)


#Calcular el interes del periodo (r)

#Se crea una función r despejando en la ecuación general.

r=function(VF,VA,t){
  
  rsalida= (((VF/VA)-1)/t)
 
  #Se crea un objeto de texto  
  rtexto=paste0("El Interés del Periodo es: ",rsalida)
 
  #Se crea una lista que contenga a ambos objetos
  rlista=list(InteresPeriodo=rsalida,rtexto=rtexto)
  return(rlista)
 }

#Aquí probamos que la función sea correcta con los datos del problema proporcionado

#resultado =r(VF=1140,VA=1000,t=7)
#r=resultado$InteresPeriodo
#print(resultado$rtexto)


#Calcular el tiempo del periodo (t)

#Se crea una función t despejando en la ecuación general.

t=function(VF,VA,r){
  
  tsalida= (((VF/VA)-1)/r)
  
  #Se crea un objeto de texto 
  TiempoPtexto=paste0("El tiempo del periodo es: ",tsalida)

  #Se crea una lista que contenga a ambos objetos
  tlista=list(TiempoPeriodo=tsalida,TiempoPtexto=TiempoPtexto)
  return(tlista)
 }
 
#Aquí probamos que la función sea correcta con los datos del problema proporcionado

#resultado =t(VF=1140,VA=1000,r=0.02)
#t=resultado$TiempoPeriodo
#print(resultado$TiempoTtexto)





