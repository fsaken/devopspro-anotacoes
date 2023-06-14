resource "local_file" "foo" {
    content = var.conteudo
    filename = "./arquivo.txt"
}

variable "conteudo" {
    default =  2
    type = number
    description = "descrição do conteudo que vai para o arquivo"
}

output "teste" {
    value = local_file.foo.content
}