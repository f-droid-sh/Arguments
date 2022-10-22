#!/bin/bash
acierto=0
if [ $# -ne 3 ]; then
	#Si el usuario no mete los tres argumentos le mostramos un mensaje de error.
	echo "Error: Tiene que tener los siguiente<number1> <number2> <number3>"
else
	for dado1 in $(seq 1 $2); do
		let dado=($RANDOM%$1)+1
		if [ $dado -ge 3 ]; then
			#Si es mayor o igual es un exito ;)
			echo "Es "$dado1": "$dado" *"
			((acierto ++))
			#Hacemos un contador para que nos cuente los aciertos.
		else
			echo "Es "$dado1": "$dado
		fi
	done
echo "Resultado de exitos: "$acierto
fi
exit 0
