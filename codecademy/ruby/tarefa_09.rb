# TAREFA 09:  Lê um array de nome de livros e primeiro coloca em ordem
# alfabetica, depois coloca em ordem alfabetica decrescente, apenas
# utilizando o sort.

def alphabetize(arr, rev=false)
	if rev
		arr.sort { |item1, item2| item2 <=> item1 }
	else
		arr.sort { |item1, item2| item1 <=> item2 }
	end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"