programa {
	
	inclua biblioteca Util --> u
	real exemplo = 7.5
	real valores[] = { 10.0, 7.0, 6.7, 5.0, 4.0, 3.0, 9.0, 8.5, 9.3, exemplo}
	
	funcao inicio() {
		inteiro novaPosicao = particiona(0, u.numero_elementos(valores))
		imprimeResultado(novaPosicao)
	}

	funcao imprimeResultado(inteiro posicao) {
		escreva("O exemplo foi inserido na posição: ", posicao, "\n")

		para(inteiro i = 0; i < u.numero_elementos(valores); i++) {
			real pontuacao = valores[i]
	
			escreva("Posição ", i, ": ", pontuacao, "\n")
		}
	}

	funcao inteiro particiona(inteiro comeco, inteiro fim) {
		inteiro menoresEncontrados = 0
		real pivot = valores[fim -1]
		
		para(inteiro j = 0; j < fim -1; j++) {
			real valorAtual = valores[j]

			se(valorAtual <= pivot) {
				trocaPosicao(j, menoresEncontrados)
				menoresEncontrados++
			}
		}
		trocaPosicao( fim -1, menoresEncontrados)
		retorne menoresEncontrados
	}

	funcao trocaPosicao(inteiro de, inteiro paraOnde) {
		real valor1 = valores[de]
		real valor2 = valores[paraOnde]

		valores[paraOnde] = valor1
		valores[de] = valor2		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 65; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */