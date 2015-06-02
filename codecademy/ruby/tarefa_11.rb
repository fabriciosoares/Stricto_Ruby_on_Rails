# TAREFA 11:  Faz um benchmark entre hashs com chaves em strings x symbol.

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
	100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
	100_000.times { symbol_AZ[:r] }
end

puts "Tempo usando string: #{string_time} segundos."
puts "Tempo usando símbolos: #{symbol_time} segundos."