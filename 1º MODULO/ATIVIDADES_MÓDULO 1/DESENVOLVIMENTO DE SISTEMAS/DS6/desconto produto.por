programa
{
	
	funcao inicio()
	{
		escreva(" aplicativo de desconto\n ")
		inteiro produto[9]
		inteiro desconto=0
		para (inteiro i = 0; i < 10; i++)
		{
			// O caracter especial \t serve para escrever uma tabulação
			escreva(" digite o valor do primeiro produto\n ")
			leia (produto[i])
			desconto = produto[i] / 2
			escreva(" o produto ", produto[i], " com 50 % de desconto fica\n ", desconto)
			
						
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 405; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */