import UIKit


class Calculo {
    var numero1: Int?
    var numero2: Int?
    
    func calcula() -> Int {
        if let nro1 = numero1, let numero2 = numero2 {
            return nro1 + numero2
        }
        
        return 0
    }
}

class Subtrai: Calculo {
    override func calcula() -> Int {
        if let nro1 = numero1, let numero2 = numero2 {
            return nro1 - numero2
        }
        
        return 0
    }
}

class Desconto: Calculo { // 10$
    override func calcula() -> Int {
        let resultadoPai = super.calcula()
        return resultadoPai - 10
    }
}

let desconto = Desconto()
desconto.numero1 = 20
desconto.numero2 = 5
desconto.calcula()



class Animal {
    var nome: String
    var cor: String
    init(nome: String, cor: String) {
        self.nome = nome
        self.cor = cor
    }
    
    func comer() { // função void
        print("O animal come")
    }
    
    func emitirSom() -> String {
        return "Som emitido pelo animal"
    }
    
}

class Gato: Animal {
    // polimorfismo
    override func emitirSom() -> String {
        let animalSom = super.emitirSom()
        return "\(animalSom) e o gato faz Miauuuuuuuu"
    }
    
    override func comer() {
        super.comer()
        print("O gato Devorou o Whiskas")
    }
}


class Vaca: Animal {
    override func emitirSom() -> String {
        return "Muuuuuuuuuu"
    }
}


let gato = Gato(nome: "Garfield", cor: "Laranja")
let somGato = gato.emitirSom()
gato.comer()
print(somGato)

print("\n--------------\n")

let mimosa = Vaca(nome: "Mimosa", cor: "preta e branca")
let somVaca = mimosa.emitirSom()
print(somVaca)


