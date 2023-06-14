resource "local_file" "foo" {
    content = "A tipo de máquina selecionada é ${var.conteudo["vm_large"]}"
    filename = "./arquivo.txt"
}

variable "conteudo" {
    default =  {
        
        "vm_small" = "1vcpu-4ram"
        "vm_medium" = "2vcpu-8ram"
        "vm_large" = "4vcpu-16ram"
    }
    type = map
    description = "descrição do conteudo que vai para o arquivo"
}

output "teste" {
    value = local_file.foo.content
}