# TAREFA 15:  Criar uma classe "Computer" com variaveis globais, de instancia e de classe

class Computer
	$manufacturer = "Mango Computer, Inc."
	@@files = {hello: "Olá, mundo!"}
	
	def initialize(username, password)
		@username = username
		@password = password
	end
	
	def current_user
		@username
	end
	
	def self.display_files
		@@files
	end
end

# Cria uma nova instância de Computer:
hal = Computer.new("Dave", 12345)

puts "Usuário atual: #{hal.current_user}"
# @username pertence à instância hal.

puts "Fabricante: #{$manufacturer}"
# $manufacturer é global! Podemos pegá-la diretamente.

puts "Arquivos: #{Computer.display_files}"
# @@files pertence à classe Computer.