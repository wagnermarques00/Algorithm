programa {

	inclua biblioteca Util --> u
		
	funcao inicio() {
		real precos[5] = { 1000000.0, 46000.0, 16000.0, 46000.0, 17000.0 }

		ordenaValor(precos, u.numero_elementos(precos))
		para(inteiro i = 0; i < u.numero_elementos(precos); i++) {
			escreva("Valor da ", i, "ª ordem: ", precos[i], "\n")
		}
		
	}

	funcao inteiro procuraMenorValor(real valor[], inteiro inicio, inteiro fim) {
		inteiro menorValor = inicio

		para(inteiro valorAtual = inicio; valorAtual <= fim; valorAtual++) {
			se(valor[valorAtual] < valor[menorValor]) {
				menorValor = valorAtual
			}
		}
		retorne menorValor
	}

	funcao ordenaValor(real valor[], inteiro quantidadeElementos) {
		para(inteiro valorAtual = 0; valorAtual < quantidadeElementos -1; valorAtual++) {
			inteiro valorMenor = procuraMenorValor(valor, valorAtual, u.numero_elementos(valor) -1)

			real precoAtual = valor[valorAtual]
			real precoMenor = valor[valorMenor]

			valor[valorAtual] = precoMenor
			valor[valorMenor] = precoAtual
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1001; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */