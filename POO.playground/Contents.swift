import UIKit

// Vamos Iniciar pela Classe CACHORRO

// Declaração de classe

class Mamifero {
    
}

class Cachorro: Mamifero {
    // TEM: Atributos / Propriedades / Características
    var nome: String
    var tamanho: Double
    var raca: String
    var peso: Double
    var cor: String
    var dataNascimento: String
    
    init(nome: String, tamanho: Double, raca: String, peso: Double, cor: String, dataNascimento: String) {
        self.nome = nome
        self.tamanho = tamanho
        self.raca = raca
        self.peso = peso
        self.cor = cor
        self.dataNascimento = dataNascimento
    }
    
    
    // FAZ: Methods, Funcs, Ações
    func late() {
        print("AUAUAU")
    }
    
    func brinca() {
        print("Se diverte")
    }
    
    func pula() {
        print("Sai do chão")
    }
    
    func dorme() {
        print("Zzzzz")
    }
    
    func come() {
        print("fica alimentados")
    }
}


let lola = Cachorro(nome: "Lola", tamanho: 0, raca: "Poodle do ódio", peso: 1.4, cor: "BRANCA", dataNascimento: "29/10/2013")

print(lola.nome)
print(lola.tamanho)
lola.late()
lola.dorme()


print("\n-----------------\n")

let bidu = Cachorro(nome: "Bidu", tamanho: 3, raca: "Vira Lata", peso: 2.4, cor: "Caramelo", dataNascimento: "10/03/2008")


print(bidu.nome)
print(bidu.tamanho)
bidu.late()
bidu.dorme()



