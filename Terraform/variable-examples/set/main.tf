resource "local_file" "foo" {
    content = "A tipo de máquina selecionada é ${join(", ",var.conteudo)}"
    filename = "./arquivo.txt"
}

variable "conteudo" {
    default = ["1vcpu-4ram", "2vcpu-8ram","4vcpu-16ram"]
    type = set(string)
    description = "descrição do conteudo que vai para o arquivo"
}

output "teste" {
    value = local_file.foo.content
}