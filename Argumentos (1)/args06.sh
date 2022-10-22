#!/bin/bash
arg2=$2
if [ $# -eq 0 -o $# -gt 2 ]; then
	echo "¡Error! Debes poner <num. de feligreses> <si o no teneis en cuenta las medidad COVID>"
	#Si el número de argumentos es menor que dos o se pasa de dos muestra un mensaje de error.
else
	if [ $# -eq 1 ]; then
		arg2='p'
	fi
	if [ $arg2 = no -o $arg2 = 'p' ]; then
		#Sino toman medidad COVID calculamos los metros sobre la base de 1,2 m y se lo mostramos
		let metros=$1*12
		let metros=metros/10
		if ! [ $metros -eq 0 ]; then
			((metros ++))
		fi
		echo "El número de metros cuadrados necesarios son "$metros
		echo ""
		echo "<calculando arbotantes>"
		sleep 1
		let fachada=metros/30
		let arbotante=fachada/5
		let arbotante=arbotante*2
		let arbotante=arbotante*2
		echo ""
		echo "Se necesitan "$arbotante" para construir la iglesia"

	fi
	if [ $arg2 = "si" -o $arg2 = "Si" -o $arg2 = "SI" -o $arg2 = "sI" ]; then
		let metros=$1*2
		#Si toman medidas COVID calculamos los metros sobre la base de 2 metros
                echo "El número de metros cuadrados necesarios son "$metros
                echo ""
                echo "<calculando arbotantes>"
                sleep 1
		let fachada=metros/30
		let arbotante=fachada/5
		let arbotante=arbotante*2
		let arbotante=arbotante*2
		echo ""
		echo "Se necesitan "$arbotante" para construir la iglesia"
	fi
fi



exit 0
