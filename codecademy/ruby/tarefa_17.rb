# TAREFA 17: Crie uma classe Person com nome e idade e crie um método público "about me"
# que exibe as informações da pessoa e um método privado com as informações bancárias.
# Provoque um erro do Ruby tentando acessar o método privado de fora da classe.

class Person
	
	def initialize(name, age)
		@name = name
		@age = age
	end
	
	public		# Esse método pode ser chamado de fora da classe.
	
		def about_me
			puts "Meu nome é #{@name} e tenho #{@age} anos!"
		end
	
	private	 # Esse método não pode ser chamado de fora da classe!
	
		def bank_account_number
			@account_number = 12345
			puts "O número da minha conta bancária é #{@account_number}."
		end
end

eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number