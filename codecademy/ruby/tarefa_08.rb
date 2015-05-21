# TAREFA 08:  Lê uma frase do usuário, contabiliza as
# palavras e ordena as palavras pela quantidade de
# incidências

puts "Entre com uma frase:"
text = gets.chomp
words = text.split(" ")
frequencies = Hash.new(0)
words.each do |palavra|
	frequencies[palavra] += 1
end
frequencies = frequencies.sort_by do |palavra, qtd|
	qtd
end
frequencies.reverse!
frequencies.each do |palavra, qtd|
	puts palavra + " " + qtd.to_s
end