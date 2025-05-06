# Projeto1
Projeto da calculadora em linux e em Python

# Etapas para a calculadora em linux 
# 1. Criar o arquivo do script

Abra o terminal e use um editor para criar o script, por exemplo:

nano calculadora.sh

# 2. Colar o código no editor

Copie e cole o código a seguir dentro do editor:

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
 
	elif [ "$operacao" = "*" ]; then 
		resultado=$(echo "$num1 * $num2" | bc)
  		echo "O resultado da multiplicação $num1 * $num2 é $resultado"
    
	elif [ "$operacao" = "/" ]; then
 		resultado=$(echo "scale=2; $num1 / $num2" | bc)
   		echo "O resultado da divisão $num1 / $num2 é $resultado"
    
	else
    	echo "Operação inválida"
    	exit 1
	fi

	echo "Obrigado por usar esta calculadora, $nome. Até mais!"

# 3. Salvar e sair do editor

Pressione CTRL + O para salvar.

Pressione ENTER para confirmar.

Pressione CTRL + X para sair.

# 4. Tornar o script executável

chmod +x calculadora.sh

# 5. Executar o script

./calculadora.sh

# 6. Configurar a permissão 

chmod 744 calculadora.sh

# Etapas para a calculadora em Python

# 1. Abra o google colab no link abaixo e logue na sua conta

https://colab.research.google.com

# 2. Abra um notebook e abra o arquivo .ipynb

# 3. Explicação do codigo

	print('Está é uma calculadora')

Foi usado o comando (print) para aparecer o texto para o usuario

	valor1 = int(input ('Digite o primeiro valor: '))
	sinal = input('Digite um sinal:')
	valor2 = int(input ('Digite o segundo valor: '))

E logo em seguida colocamos as variaveis chamadas (valor1), (sinal) e (valor2) cada uma com o comando de (input) para o usuario colocar o valor e o sinal, coloquei (int) no começo para o programa identificar que os numeros que serão colocados serão inteiros

	if sinal == '+':
  		print('O resultado dos valores', valor1, sinal, valor2, 'é', valor1 + valor2)

Depois usando o comando (if) para caso o sinal seja alguma das opções ele ira executar um comando

	elif sinal == "-":
  		print('O resultado dos valores', valor1, sinal, valor2, 'é', valor1 - valor2)
	elif sinal == '*':
  		print('O resultado dos valores', valor1, sinal, valor2, 'é', valor1 * valor2)
	elif sinal == '/':
  		print('O resultado dos valores', valor1, sinal, valor2, 'é', valor1 / valor2)
	elif sinal == '%':
  		print('O resultado dos valores', valor1, sinal, valor2, 'é', valor1 % valor2)
	elif sinal == '**':
  		print('O resultado dos valores', valor1, sinal, valor2, 'é', valor1 ** valor2)

E o comando (elif) usei para cada entrada de sinal que seja igual ao operador selecionado ira fazer um comando

	else:
  		print('Sinal invalido')

No final usei (else) para caso o usuario digite um sinal que não existe irá aparecer a mensagem de sinal invalido 