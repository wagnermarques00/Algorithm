programa {
	
	inclua biblioteca Util --> u
	real valorExemplo = 7.5
	real valores[] = { 10.0, 7.0, 6.7, 5.0, 4.0, 3.0, 9.0, 8.5, 9.3, valorExemplo }
	
	funcao inicio() {
		inteiro novaPosicao = particiona(0, u.numero_elementos(valores))

		ordenacaoRapida(0, u.numero_elementos(valores))
		imprimeResultado(novaPosicao)	
	}

	funcao ordenacaoRapida(inteiro de, inteiro paraOnde) {
		inteiro numeroElementos = paraOnde - de

		se(numeroElementos > 1) {
			inteiro posicaoPivot = particiona(de, paraOnde)

			ordenacaoRapida(de, posicaoPivot)
			ordenacaoRapida(posicaoPivot + 1, paraOnde)
		}
	}

	funcao inteiro particiona(inteiro comeco, inteiro fim) {
		inteiro menoresEncontrados = 0
		real pivot = valores[fim - 1]

		para(inteiro i = 0; i < fim -1; i++) {
			real atual = valores[i]

			se(atual <= pivot) {
				alteraPosicao(i, menoresEncontrados)
				menoresEncontrados++
			}
		}
		alteraPosicao(fim - 1, menoresEncontrados)
		retorne menoresEncontrados
	}

	funcao alteraPosicao(inteiro de, inteiro paraOnde) {
		real valor1 = valores[paraOnde]
		real valor2 = valores[de]

		valores[de] = valor1
		valores[paraOnde] = valor2
	}

	funcao imprimeResultado(inteiro posicao) {
		escreva("O exemplo foi inserido na posição: " + posicao + "\n")
		para(inteiro i = 0; i < u.numero_elementos(valores); i++) {
			real pontuacao = valores[i]

			escreva("Posição " + i + ": " + pontuacao + "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1401; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valores, 5, 6, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */