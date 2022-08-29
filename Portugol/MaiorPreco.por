programa {
	
	funcao inicio() {
		real precos[5] = { 1000000.0, 46000.0, 16000.0, 46000.0, 17000.0 }
		inteiro maiorPreco = 0

		para (inteiro precoAtual = 0; precoAtual <= 4; precoAtual++) {
			se (precos[precoAtual] > precos[maiorPreco]) {
				maiorPreco = precoAtual
			}
		}

		escreva("\nMaior posição: ", maiorPreco)
		escreva("\nO maior preço é: ", precos[maiorPreco])			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 383; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */