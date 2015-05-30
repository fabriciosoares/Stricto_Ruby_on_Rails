# TAREFA 10:  Lê um array de numeros e coloca em ordem ou crescente ou
# decrescente, utilizando o sort ou o reverse, atualizando o valor do array.

def alphabetize(arr, rev = false)
	arr.sort!
	if rev then
		arr.reverse!
		end
end

numbers = [3, 1, 5, 2, 4]

puts alphabetize(numbers, rev = true)