# TAREFA 06:  Captura um texto do usuário e depois captura
# um grupo de palavras e substitui estas palavras no texto
# inicial pela palavra REDACTED

puts "digite um texto: "
text = gets.chomp
text.downcase!
puts "digite as palavras para busca: "
redact = gets.chomp
redact.downcase!
words = text.split(" ")
redact_split = redact(" ")
resultado = ""
marca = 0
words.each do |words|
	redact_split.each do |redact_split|
		if words == redact_split
			marca = 1
		end
	end
	if marca == 1
		resultado += " REDACTED"
	else
		resultado += " " + words
	end
	marca = 0
end
print resultado