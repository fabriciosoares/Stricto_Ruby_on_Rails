# TAREFA 07:  Criando um Hashh e imprimindo

secret_identities = {
	"O Batman" => "Bruce Wayne",
	"Superman" => "Clark Kent",
	"Mulher Maravilha" => "Diana Prince",
	"Freakazoid" => "Dexter Douglas"
}

secret_identities.each do 
	|x, y| puts x + ": " + y
end