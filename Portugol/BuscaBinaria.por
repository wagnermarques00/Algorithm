programa {
	
	inclua biblioteca Util --> u
	real valores[] = {3.0, 4.0, 5.0, 6.7, 7.0, 8.5, 9.0, 9.3, 10.0 } //Considere que os elementos deste vetor foram previamente ordenados(para este algoritmo funcionar, precisa estar ordenado)
	real valorProcurar = 9.3
	
	funcao inicio() {
		inteiro numeroEncontrado = buscaBinaria(0, u.numero_elementos(valores), valorProcurar)
		imprimeResultado(valorProcurar, numeroEncontrado)
	}

	funcao inteiro buscaBinaria(inteiro de, inteiro paraO, real procurando) {
		inteiro meio = (de + paraO) / 2
		real valor = valores[meio]

		se(de > paraO) {
			retorne -1
		}
		se(procurando == valor) {
			retorne meio
		}
		se(procurando < valor) {
			retorne buscaBinaria(de, meio - 1, procurando)
		}
		retorne buscaBinaria(meio + 1, paraO, procurando)
	}

	funcao imprimeResultado(real encontrado, inteiro posicaoEncontrada) {
		se(posicaoEncontrada >= 0) {
			escreva("O número ", encontrado, " foi encontrado na posição ", posicaoEncontrada, 
				   ". O vetor completo encontra-se abaixo:\n")
			para(inteiro atual = 0; atual < u.numero_elementos(valores); atual++) {
				real valor = valores[atual]
				
				escreva("Posição ", atual, ": ", valor, "\n")
			}
		} senao {
			escreva("O número ", encontrado, " não foi encontrado no vetor")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 258; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */