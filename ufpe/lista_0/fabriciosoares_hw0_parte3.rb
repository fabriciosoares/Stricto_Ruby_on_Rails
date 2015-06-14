# Author: Fabricio Soares da Silva
# email: fss7@cin.ufpe.br
# date: 04-jun-2015

class BookInStock
	
	@isbn
	@preco
	
	# construtor
	def initialize(isbn, preco)
		@isbn = isbn
		@preco = preco
		raise ArgumentError, "ISBN vazio" unless @isbn != ""
		raise ArgunentError, "Preço inválido" unless @preco > 0
	end
	
	# Getters
	def getIsbn()
		return @isbn
	end
	
	def getPreco()
		return @preco
	end
	
	# Setters
	def setIsbn(isbn)
		@isbn = isbn
	end
	
	def setPreco(preco)
		@preco = preco
	end
	
	# Outros Métodos
	def price_as_string()
		return "$#{format("%.2f", getPreco())}"
	end
end

livro_1 = BookInStock.new("Hobbit", 30.3)
# livro_2 = BookInStock.new("", 10.20)
# livro_3 = BookInStock.new("Rota66", 0)

puts livro_1.price_as_string()