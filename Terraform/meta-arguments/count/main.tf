resource "local_file" "arquivo" {
    content = "Arquivo ${count.index}"
    # +1 utilizado para os arquivos iniciarem a partir do número 1
    filename = "./arquivo-${count.index + 1}.txt"
    
    count = var.contador
}

variable "contador" {
    default = 2
}
