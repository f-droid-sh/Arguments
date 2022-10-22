#!/bin/bash
#Marcos Cordo Gutiérrez
if [ $# -ne 2 ]; then
        echo "Error: los números son --> <número1> <número2>"
        #Si el número de argumentos es menor a dos muestra un mensaje de error.
fi
for argumento in $(seq $1 -1 $2); do
        let divisible=(argumento%3)
        #Calculamos los divisores que hay dentro del intervalo con un %3.
        if [ $divisible -eq 0 ]; then
                echo $argumento
                #Si var1 es igual a 0 mostramos los divisores.
        fi
done

exit 0
