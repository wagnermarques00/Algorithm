programa {
	
	inclua biblioteca Util --> u
	funcao inicio() {
		real pontuacoes[] = { 4.0, 5.0, 8.5, 9.0, 3.0, 6.7, 7.0, 9.3, 10.0 }
		real pontuacaoComparacao = 7.5
		inteiro quantidadeElementos = u.numero_elementos(pontuacoes)
		
		inteiro contagemMenor = encontrarContagemMenores(pontuacaoComparacao, pontuacoes, quantidadeElementos)
		escreva("Quantidade de números menores que o exemplo: " + contagemMenor)
	}

	funcao inteiro encontrarContagemMenores(real valorComparacao, real valores[], inteiro quantidadeElementos) {
		inteiro contagemMenores = 0

		para(inteiro i = 0; i < quantidadeElementos; i++) {
			se(valores[i] < valorComparacao) {
				contagemMenores++
			}
		}
		retorne contagemMenores
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 635; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */