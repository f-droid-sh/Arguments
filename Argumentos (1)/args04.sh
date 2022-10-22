#!/bin/bash
clear
#Sacamos el dia de la semana en letras
dia=$(date +%A)
#Calculamos los días que quedan para que se acabe el curso.
let curso=$(date +%j)+2
let dias_actuales=curso+120
let final_curso=270-dias_actuales
if [ $# -eq 1 ]; then
	#Si el argumento es igual a 1 le mostramos el resultado.
	echo "Hola "$1", hoy es" $dia", quedan "$final_curso "días para acabar el curso."
else
	#Sino lo pone le decimos un mensaje de error y el resto de la información.
	echo "Error: Tienes que poner <nombre>"
	echo "Pon los argumentos necesarios."
	echo "Hoy es" $dia", quedan "$final_curso "días para acabar el curso"
fi

exit 0
