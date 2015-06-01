# TAREFA 18:  Crie uma classe "Account" que simule uma cont bancária.

class Account
	
	attr_reader :name, :balance
	
	def initialize(name, balance=100)
		@name = name
		@balance = balance
	end
	
	def display_balance(pin_number)
		puts pin_number == pin ? "= Conta #{pin_number} => Saldo: R$ #{@balance}." : "x Conta #{pin_number} => Não foi possível exibir saldo. #{pin_error}."
	end
	
	def deposit(pin_number, amount)
		if pin_number == pin
			@balance += amount
			puts "+ Conta #{pin_number} => Depositou R$ #{amount}. Novo saldo: R$ #{@balance}."
		else
			puts "x Conta #{pin_number} => Não foi possível efetuar depósito. #{pin_error}."
		end
	end
	
	def withdraw(pin_number, amount)
		if pin_number == pin
			if amount <= @balance
				@balance -= amount
				puts "- Conta #{pin_number} => Retirou R$ #{amount}. Novo saldo: R$ #{@balance}."
			else
				puts "x Conta #{pin_number} => O valor solicitado (R$ #{amount}) é maior que o saldo (R$ #{balance}). Não é possível efetuar retirada!"
			end
		else
			puts "x Conta #{pin_number} => Não foi possível efetuar retirada. #{pin_error}."
		end
	end
	
	private
	
		def pin
			@pin = 1234
		end
	
		def pin_error
			"Acesso negado: PIN incorreto"
		end
end

class CheckingAccount < Account
	def initialize(name, balance=100)
		super
	end
	
	def check(pin_number)
		puts pin_number == pin ? "= Conta #{pin_number} => Conta Válida." : "x Conta #{pin_number} => #{pin_error}."
	end
end

my_account = CheckingAccount.new("Eric", 1_000_000)
my_account.check(11)
my_account.withdraw(11, 500_000)
my_account.check(1234)
my_account.display_balance(1234)
my_account.deposit(1234, 250_000)
my_account.withdraw(1234, 2_000_000)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)