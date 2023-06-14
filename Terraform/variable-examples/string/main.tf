resource "local_file" "foo" {
    content = var.conteudo
    filename = "./arquivo.txt"
}

variable "conteudo" {
    default =  "conteudo do arquivo"
    type = string
    description = "descrição do conteudo que vai para o arquivo"
}

output "teste" {
    value = local_file.foo.content
}