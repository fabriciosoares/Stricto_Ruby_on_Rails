# Author: Fabricio Soares da Silva
# email: fss7@cin.ufpe.br
# date: 04-jun-2015

def sum(lista_inteiros)
	soma = 0
	lista_inteiros.each do |numero|
		soma += numero
	end
	return soma
end

def max_2_sum(lista_inteiros)
	lista_2_sum = lista_inteiros
	soma_2_maior = 0
	if lista_2_sum.length != 0
		soma_2_maior += lista_2_sum.max
		lista_2_sum.delete_at(lista_2_sum.index(lista_2_sum.max))
		if lista_2_sum.length != 0
			soma_2_maior += lista_2_sum.max
		end
	end
	return soma_2_maior
end

def sum_to_n?(lista_inteiros, n)
#	puts lista_inteiros.length
	resultado = false
	lista_inteiros_2 = lista_inteiros
	if lista_inteiros.length > 1
		lista_inteiros.each do |num|
		#	puts "Testando = #{num}"
			teste = n - num
			lista_inteiros_2.each do |num_2|
				if lista_inteiros_2.index(num_2) != lista_inteiros.index(num)
				#	puts "A - #{num} / #{lista_inteiros.index(num)}   ///   B - #{num_2} / #{lista_inteiros_2.index(num_2)}   ///   teste = #{teste} / num_2 = #{num_2}"
					resultado = true if teste == num_2
				end
			end
		end
	end
	return resultado
end

listaA = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22]
listaB = [7]
listaC = []
puts "- (A.1): #{sum(listaA)}"
puts "- (A.2): #{sum(listaB)}"
puts "- (A.3): #{sum(listaC)}"
puts "------> #{listaA.length}"
puts "- (B.1): #{max_2_sum(listaA)}"
puts "- (B.2): #{max_2_sum(listaB)}"
puts "- (B.3): #{max_2_sum(listaC)}"
puts "------> #{listaA.length}"
puts "- (C.1): #{sum_to_n?(listaA, 21)}"
puts "- (C.2): #{sum_to_n?(listaA, 20)}"
puts "- (C.3): #{sum_to_n?(listaB, 2)}"
puts "- (C.4): #{sum_to_n?(listaC, 3)}"