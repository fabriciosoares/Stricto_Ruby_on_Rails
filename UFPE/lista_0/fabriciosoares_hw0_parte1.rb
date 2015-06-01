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
	lista_2_sum = lista_inteiros.clone
	soma_2_maior = 0
	if !lista_2_sum.empty?
		soma_2_maior += lista_2_sum.max
		lista_2_sum.delete_at(lista_2_sum.index(lista_2_sum.max))
		if !lista_2_sum.empty?
			soma_2_maior += lista_2_sum.max
		end
	end
	return soma_2_maior
end

def sum_to_n?(lista_inteiros, n)
	resultado = false
	lista_inteiros_2 = lista_inteiros
	if lista_inteiros.length > 1
		lista_inteiros.each do |num|
			teste = n - num
			lista_inteiros_2.each do |num_2|
				if lista_inteiros_2.index(num_2) != lista_inteiros.index(num)
					resultado = true if teste == num_2
				end
			end
		end
	end
	return resultado
end

listaA = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
listaB = [7]
listaC = []
puts "- (A.1): #{sum(listaA)}"
puts "- (A.2): #{sum(listaB)}"
puts "- (A.3): #{sum(listaC)}"

puts "- (B.1): #{max_2_sum(listaA)}"
puts "- (B.2): #{max_2_sum(listaB)}"
puts "- (B.3): #{max_2_sum(listaC)}"

puts "- (C.1): #{sum_to_n?(listaA, 15)}"
puts "- (C.2): #{sum_to_n?(listaA, 20)}"
puts "- (C.3): #{sum_to_n?(listaB, 7)}"
puts "- (C.4): #{sum_to_n?(listaC, 3)}"