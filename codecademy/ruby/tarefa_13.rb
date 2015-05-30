# TAREFA 13: Método que passa 10 como parâmetro e checa se o parâmetro é inteiro;
# checa se o parâmetro é maior que 0; cria um array de números primos com a quantidade
# de elementos igual ao valor passado por parâmetro

$VERBOSE = nil	# Vamos explicar isso no final da lição.
require 'prime'   # Isso é um modulo. Vamos abordá-lo em breve!

def first_n_primes(n)
	return "n deve ser um inteiro." unless n.is_a? Integer
	return "n deve ser maior que 0." if n <= 0
	# O bloco abaixo ainda pode ser substituido
	prime_array ||= []
	prime = Prime.new
	n.times { |n| prime_array << prime.next }
	prime_array
	# Pelo sequinte código:
	# prime = Prime.instance
	# prime.first n
end

puts first_n_primes(10)