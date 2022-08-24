programa {

	inclua biblioteca Util --> u

	real resultado[9] //Por limitação do portugol, tive de jogar este vetor no escopo global, já colocando o número de casas. O ideal seria fazer a função intercalar retornar o retorno em valor
	real pontuacoes[] = { 4.0, 5.0, 8.5, 9.0, 3.0, 6.7, 7.0, 9.3, 10.0 } //Os valores abaixo foram criados considerando que os valores já haviam sido organizados anteriormente
	
	funcao inicio() {
		ordenarIntercalacao(pontuacoes, 0, u.numero_elementos(pontuacoes))
    		imprimeResultado()    		
    }

	funcao imprimeResultado() {
		para (inteiro i = 0; i <= u.numero_elementos(pontuacoes) - 1; i++) {
          	escreva("Valor da ", i + 1, "ª ordem: ", pontuacoes[i], "\n")
     	}
	}

	funcao ordenarIntercalacao(real valores[], inteiro comeco, inteiro fim) {
		inteiro numeroElementos = fim - comeco

		se(numeroElementos > 1) {
			inteiro meio = (comeco + fim) / 2

			ordenarIntercalacao(valores, comeco, meio)
			ordenarIntercalacao(valores, meio, fim)
			intercalar(valores, comeco, meio, fim)			
		}
	}
	
	funcao intercalar(real valores[], inteiro comeco, inteiro meio, inteiro fim) {
		inteiro totalElementos = meio - fim
		inteiro atual = 0
		inteiro primeiraPontuacaoAtual = comeco
		inteiro segundaPontuacaoAtual = meio

		enquanto(primeiraPontuacaoAtual < meio e segundaPontuacaoAtual < fim) {
			real primeiraPontuacao = valores[primeiraPontuacaoAtual]
			real segundaPontuacao = valores[segundaPontuacaoAtual]

			se (primeiraPontuacao < segundaPontuacao) {
				resultado[atual] = primeiraPontuacao
				primeiraPontuacaoAtual++
			} senao {
				resultado[atual] = segundaPontuacao
				segundaPontuacaoAtual++
			}
			atual++
		}

		enquanto(primeiraPontuacaoAtual < meio) {
			resultado[atual] = valores[primeiraPontuacaoAtual]
			atual++
			primeiraPontuacaoAtual++
		}
		enquanto(segundaPontuacaoAtual < fim) {
			resultado[atual] = valores[segundaPontuacaoAtual]
			atual++
			segundaPontuacaoAtual++
		}

		para(inteiro i = 0; i < atual; i++) {
			valores[comeco + i] = resultado[i]
		}
        //  Por limitação do Portugol, não pude retornar o vetor do resultado
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 897; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {comeco, 19, 52, 6}-{fim, 19, 68, 3}-{numeroElementos, 20, 10, 15}-{meio, 23, 11, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */