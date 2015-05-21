# TAREFA 02:  Leia informações do usuário como nome, 
# último nome, cidade, estado e retorna um texto
# concatenando todas as informações.

print "Qual é o seu nome?  "
first_name = gets.chomp
first_name.capitalize.reverse!

print "Qual o seu último nome?  "
last_name = gets.chomp
last_name.capitalize!

print "Em que cidade você mora?  "
city = gets.chomp
city.capitalize!

print "Em que estado você mora?  "
state = gets.chomp
state.upcase!

print "Meu nome é #{first_name} #{last_name}, moro em #{city}, em #{state}"