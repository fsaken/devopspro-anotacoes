resource "local_file" "arquivo1" {
    content = "Conteudo do arquivo 1"
    filename = "./arquivo1.txt"
    depends_on = [ 
        local_file.arquivo2
    ]
}

resource "local_file" "arquivo2" {
    content = "Conteudo do arquivo 2"
    filename = "./arquivo2.txt"
}


