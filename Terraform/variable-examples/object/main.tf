resource "local_file" "foo" {
  content  = "A configuração da máquina selecionada é: \n\n Região: ${var.conteudo.regiao} \n Tipo: ${var.conteudo.opcao_maquina} \n Backup: ${var.conteudo.bkp}\n"
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default = {

    regiao        = "sa-east1",
    opcao_maquina = "c2.large",
    bkp           = true

  }

  type        = object({ regiao = string, opcao_maquina = string, bkp = bool })
  description = "descrição do conteudo que vai para o arquivo"
}

output "teste" {
  value = local_file.foo.content
}