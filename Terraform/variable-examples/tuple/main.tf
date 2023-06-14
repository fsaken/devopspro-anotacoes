resource "local_file" "foo" {
  content  = "A configuração do cluster selecionado é: \n\n Região: ${var.conteudo[0]} \n Número de pods: ${var.conteudo[1]} \n Backup: ${var.conteudo[2]}\n"
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default = ["sa-east1",2,false]

  type        = tuple([string,number,bool])
  description = "descrição do conteudo que vai para o arquivo"
}

output "teste" {
  value = local_file.foo.content
}