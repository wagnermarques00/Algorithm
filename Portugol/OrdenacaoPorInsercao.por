programa {

	inclua biblioteca Util --> u
		
	funcao inicio() {
		real precos[5] = { 1000000.0, 46000.0, 16000.0, 46000.0, 17000.0 }

		ordenaPorInsercao(precos, u.numero_elementos(precos))
		
		para(inteiro i = 0; i < u.numero_elementos(precos); i++) {
			escreva("Valor da ", i + 1, "ª ordem: ", precos[i], "\n")
		}		
	}
	
	funcao ordenaPorInsercao(real valor[], inteiro quantidadeElementos) {
		para(inteiro valorAtual = 0; valorAtual < quantidadeElementos; valorAtual++) {
			inteiro valorAnalise = valorAtual

			enquanto(valorAnalise > 0 e valor[valorAnalise] < valor[valorAnalise - 1]) {
				real valorAnalisado = valor[valorAnalise]
				real valorAnalisadoMenosUm = valor[valorAnalise - 1]
				valor[valorAnalise] = valorAnalisadoMenosUm
				valor[valorAnalise - 1] = valorAnalisado
				valorAnalise--
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 153; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */