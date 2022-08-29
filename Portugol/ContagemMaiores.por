programa {
	
	inclua biblioteca Util --> u
	funcao inicio() {
		real pontuacoes[] = { 4.0, 5.0, 8.5, 9.0, 3.0, 6.7, 7.0, 9.3, 10.0 }
		real pontuacaoComparacao = 7.5
		inteiro quantidadeElementos = u.numero_elementos(pontuacoes)
		
		inteiro contagemMaior = encontrarContagemMaiores(pontuacaoComparacao, pontuacoes, quantidadeElementos)
		escreva("Quantidade de números maiores que o exemplo: " + contagemMaior)
	}

	funcao inteiro encontrarContagemMaiores(real valorComparacao, real valores[], inteiro quantidadeElementos) {
		inteiro contagemMaiores = 0

		para(inteiro i = 0; i < quantidadeElementos; i++) {
			se(valores[i] > valorComparacao) {
				contagemMaiores++
			}
		}
		retorne contagemMaiores
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 254; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */