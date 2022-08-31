programa {
	
	inclua biblioteca Util --> u
	real valores[] = {3.0, 4.0, 5.0, 6.7, 7.0, 8.5, 9.0, 9.3, 10.0 } //Considere que os elementos deste vetor foram previamente ordenados
	real valorProcurar = 9.3
	
	funcao inicio() {
		inteiro numeroEncontrado = buscaLinear(0, u.numero_elementos(valores), valorProcurar)
		imprimeResultado(valorProcurar, numeroEncontrado)
	}

	funcao inteiro buscaLinear(inteiro de, inteiro paraO, real procurando) {
		para(inteiro atual = de; atual < paraO; atual++) {
			se(valores[atual] == procurando) {
				retorne atual
			}
		}
		retorne -1
	}

	funcao imprimeResultado(real encontrado, inteiro posicaoEncontrada) {
		escreva("O número ", encontrado, " foi encontrado na posição ", posicaoEncontrada, 
			   ". O vetor completo encontra-se abaixo:\n")
		para(inteiro atual = 0; atual < u.numero_elementos(valores); atual++) {
			real valor = valores[atual]

			escreva("Posição ", atual, ": ", valor, "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 177; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */