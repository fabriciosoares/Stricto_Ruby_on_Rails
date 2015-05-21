# TAREFA 04:  Patolinizar um texto inserido pelo usuário

print "Digite algum texto:  "
user_input = gets.chomp
# user_input.downcase!	# caso queira transformar tudo em minusculo
if user_input == ""
	print "Nenhum texto digitado! Digite algum texto:  "
	user_input = gets.chomp
#	user_input.downcase!	# caso queira transformar tudo em minusculo
end
if user_input.include? "s" or user_input.include? "S"
	user_input.gsub!(/s/, "th")
	user_input.gsub!(/S/, "Th")
else
	print "Não tem s. "
end
puts "PATOLINIZANDO:  #{user_input}"
qtd_c = 0
conta_c = user_input.split(" ")
conta_c.each do |palavra_c|
	if palavra_c.include?"ce" or palavra_c.include? "ci"
		qtd_c += 1
	end
end
qtd_c > 1 ? plural = "s" : plural = ""
puts "O texto digitado tem #{qtd_c} palavra#{plural} com a letra c com som de s."
