#!/bin/bash
if [ $# -eq 0 ]; then
	#Si los argumentos son iguales a 0 le mostramos un mensaje de error.
	echo "¡¡Error!!"
	echo "tienes que meter al menos un argumento"
else
	for n in  $*; do
		#Hacemos un for para que nos recorra cada opción cada vez que se escriba un argumento
		#Si cuadra con alguna de las opciones, se lo mostramos al usuario.
		if [ $n -eq 2020 -o $n -eq 2008 -o $n -eq 1996 -o $n -eq 1984 -o $n -eq 1972 -o $n -eq 1960 ]; then
			echo $n" argumneto es Rata"
		fi
		if [ $n -eq 2021 -o $n -eq 2009 -o $n -eq 1997 -o $n -eq 1985 -o $n -eq 1973 -o $n -eq 1961 ]; then
			echo $n" argumneto es Buey"
		fi
		if [ $n = 2022 -o $n -eq 2010 -o $n -eq 1998 -o $n -eq 1986 -o $n -eq 1974 -o $n -eq 1962 ]; then
			echo $n" argumento es Tigre"
		fi
		if [ $n = 2023 -o $n -eq 2011 -o $n -eq 1999 -o $n -eq 1987 -o $n -eq 1975 -o $n -eq 1963 ]; then
			echo $n" argumento es conejo"
		fi
		if [ $n = 2024 -o $n -eq 2012 -o $n -eq 2000 -o $n -eq 1988 -o $n -eq 1976 -o $n -eq 1964 ]; then
			echo $n" argumento es dragón"
		fi
		if [ $n = 2025 -o $n -eq 2013 -o $n -eq 2001 -o $n -eq 1989 -o $n -eq 1977 -o $n -eq 1965 ]; then
			echo $n" argumento es Serpiente"
		fi
		if [ $n = 2026 -o $n -eq 2014 -o $n -eq 2002 -o $n -eq 1990 -o $n -eq 1978 -o $n -eq 1966 ]; then
			echo $n" argumento es caballo"
		fi
		if [ $n = 2027 -o $n -eq 2015 -o $n -eq 2003 -o $n -eq 1991 -o $n -eq 1979 -o $n -eq 1967 ]; then
			echo $n" argumento es Cabra"
		fi
		if [ $n = 2028 -o $n -eq 2016 -o $n -eq 2004 -o $n -eq 1992 -o $n -eq 1980 -o $n -eq 1968 ]; then
			echo $n" argumento es Mono"
		fi
		if [ $n = 2029 -o $n -eq 2017 -o $n -eq 2005 -o $n -eq 1993 -o $n -eq 1981 -o $n -eq 1969 ]; then
			echo $n" argumento es Gallo"
		fi
		if [ $n = 2030 -o $n -eq 2018 -o $n -eq 2006 -o $n -eq 1994 -o $n -eq 1982 -o $n -eq 1970 ]; then
			echo $n" argumento es Perro"
		fi
		if [ $n = 2031 -o $n -eq 2019 -o $n -eq 2007 -o $n -eq 1995 -o $n -eq 1983 -o $n -eq 1971 ]; then
			echo $n" argumento es Cerdo"
		fi
		#Si pone un número más pequeño de 1960 le mostramos un error.
		if [ $* -lt "1960" ]; then
			echo "¡Error!"
			echo ""
			echo "Comprueba las versiones anteriores del calendario"
		fi
		#Si pone un número mayor de 2031 le mostramos un mensaje de error.
		if [ $* -gt "2031" ]; then
			echo "¡Error!"
			echo ""
			echo "Espera a la próxima versión del calendario"
		fi
	done
fi
exit 0
