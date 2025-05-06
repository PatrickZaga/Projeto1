#!/bin/bash

echo "Digite seu nome: "
read nome
echo "Seja bem vindo $nome,está é um calculadora funcional, vamos calcular"

echo "Digite o primeiro número: "
read num1

echo "Digite o operador: "
read operacao

echo "Digite o segundo número: "
read num2

if [ "$operacao" = "+" ]; then
	resultado=$(echo "$num1 + $num2" | bc)
	echo "O resultado da soma $num1 + $num2 é $resultado"
elif [ "$operacao" = "-" ]; then
	resultado=$(echo "$num1 - $num2" | bc)
	echo "O resultado da subtração $num1 - $num2 é $resultado"
elif [ "$operacao" = '*' ]; then
  	resultado=$(echo "$num1 * $num2" | bc)
	echo "O resultado da multiplicação $num1 * $num2 é $resultado"
elif [ "$operacao" = "/" ]; then
  	resultado=$(echo "scale=2; $num1 / $num2" | bc)
	echo "O resultado da divisão $num1 / $num2 é $resultado"
else
  echo "Operação inválida"
  exit 1
fi
echo "Obrigado por usar está calculadora $nome,até mais, aperte qualquer botão para fechar o programa"

