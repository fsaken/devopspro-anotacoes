resource "local_file" "arquivo" {
    content = "Arquivo ${each.key}"
    
    filename = "./arquivo-${each.key}.txt"
    
    for_each = var.contador
}

variable "contador" {
    default = ["Maquina 1", "Maquina 2","Maquina 3"]
    type = set(string)
}
