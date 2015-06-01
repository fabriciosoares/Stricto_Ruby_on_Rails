# TAREFA 16:  Criar uma classe que controle a criação de arquivos dos usuarios
# cadastrados nas máquinas

class Machine
	
	@@users = {}
	
	def initialize(username, password)
		@username = username
		@password = password
		@@users[username] = password
		@files = {}
	end
	
	def create(filename)
		time = Time.now
		@files[filename.to_sym] = time
		puts "- O arquivo #{filename} foi criado por #{@username} as #{time}."
	end
	
	def delete(filename)
		time = Time.now
		if @files[filename.to_sym].nil?
			puts "- O arquivo #{filename} não encontrado por #{@username}!"
		else
			@files.delete(filename.to_sym)
			puts "- O arquivo #{filename} foi deletado por #{@username} as #{time}."
		end
	end
	
	def Machine.get_users
		@@users
	end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

my_machine.delete("teste.txt")
your_machine.delete("todo.txt")

puts "Users: #{Machine.get_users}"