# Author: Fabricio Soares da Silva
# email: fss7@cin.ufpe.br
# date: 04-jun-2015

def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant?(s)
	resposta = false
	if s[0].upcase.match(/[BCDFGHJKLMNPQRSTVWXYZ]/)
		resposta = true
	end
	return resposta
end

def binary_multiple_of_4?(s)
	return s.to_i(2) % 4 == 0 && /[^01]/.match(s) == nil ? true : false
end

puts "(A.1) #{hello("Fabricio")}"

puts "(B.1) #{starts_with_consonant?("olá")}"
puts "(B.2) #{starts_with_consonant?("1jjk3")}"
puts "(B.3) #{starts_with_consonant?("pá")}"
puts "(B.4) #{starts_with_consonant?("Álamo")}"
puts "(B.5) #{starts_with_consonant?("çlamo")}"

binario_1 = "0010"
binario_2 = "0100"
binario_3 = "1000"
binario_4 = "1111"
binario_5 = "A0100"
binario_6 = "100490"
puts "(C.1) #{binario_1.to_i(2)} - #{binary_multiple_of_4?(binario_1)}"
puts "(C.2) #{binario_2.to_i(2)} - #{binary_multiple_of_4?(binario_2)}"
puts "(C.3) #{binario_3.to_i(2)} - #{binary_multiple_of_4?(binario_3)}"
puts "(C.4) #{binario_4.to_i(2)} - #{binary_multiple_of_4?(binario_4)}"
puts "(C.5) #{binario_5.to_i(2)} - #{binary_multiple_of_4?(binario_5)}"
puts "(C.6) #{binario_6.to_i(2)} - #{binary_multiple_of_4?(binario_6)}"