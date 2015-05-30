# TAREFA 14:  Utilizando lambda, escolha o Hash cujo titulo é menor que "M"

crew = {
	captain: "Picard",
	first_officer: "Riker",
	lt_cdr: "Data",
	lt: "Worf",
	ensign: "Ro",
	counselor: "Troi",
	chief_engineer: "LaForge",
	doctor: "Crusher"
}
# Adicione seu código abaixo!

first_half = lambda { |x, y| y < "M" }

a_to_m = crew.select(&first_half)

puts a_to_m