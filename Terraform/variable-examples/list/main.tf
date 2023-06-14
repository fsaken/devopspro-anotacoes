resource "local_file" "foo" {
    content = "O valor da array agora é ${var.conteudo[1]}"
    filename = "./arquivo.txt"
}

variable "conteudo" {
    # É possível intercalar strings e numbers dentro da list (somente se atentando caso for string colocar "" e number somente o número separados por virgula)

    #default =  ["vm1", "vm2", "vm3", "vm4"]
    #default =  [1, 2, 3, 4]

    default =  [1, "vm2", 3, "vm4"]
    type = list
    description = "descrição do conteudo que vai para o arquivo"
}

output "teste" {
    value = local_file.foo.content
}