# TAREFA 05:  Testando os laços

# Exmplo de while
i = 1
while i <= 50
	print i
	i += 1
end
puts ""

# Exemplo de until
i = 1
until i > 50
	print i
	i += 1
end
puts ""

# Exemplo de for
i = 1
for i in 1..50
    print i
end
puts ""

# Exemplo de loop
i = 1
loop do
	print "Ruby!"
	i += 1
	break if i > 30
end
puts ""

# Exemplo de times
30.times { print "Ruby!" }