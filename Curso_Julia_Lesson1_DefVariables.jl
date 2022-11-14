#Introduccion a Julia basado en curso del Dr. Henri Laurie

#Definición de una variable

my_firstvariable="Esto es una cadena de caracteres"
println(my_firstvariable)

#Asignacion multiple, Julia permite hacer asignaciones en una sola linea de codigo mediante comas, lo cual ayuda a facilitar la lectura y compactar el codigo

firstString,secondString,thirdString,fourthString, fifthString="Esto ","es ", "una ", "asignacion ", "multiple."

println(firstString, secondString,thirdString,fourthString, fifthString)

println("Valores asignados:")
println(firstString)
println(secondString)
println(thirdString)
println(fourthString)
println(fifthString)

#Podemos ver que cada palabra se asigno a una variable(firstString, secondString,...)

#Podemos asignar de diferentes formas y distintos tipos de valores ya sean enteros, decimales, etcétera.
#Defino un arreglo que incluye las mismas palabras en nuevas variables

myFirstArray=["Esto ","es ", "una ", "asignacion ", "multiple","!"]
println("Esto contiene mi arreglo:$myFirstArray")
#Asignacion desde arreglo
oneSt,twoSt,threeSt,fourSt,fiveSt,sixSt=myFirstArray


println(oneSt,twoSt,threeSt,fourSt,fiveSt,sixSt)

#Nota: la definición de variables es sensible los caracteres, esto es que diferencía entre mayusculas y minusculas, por lo tanto no es lo mismo: "OneSt" que "oneSt"





