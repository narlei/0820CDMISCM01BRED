import UIKit

// public
// private
// fileprivate

public class Carro {
    private var modelo: String
    private var ano: Int?
    public var cor: String?

    init(modelo: String) {
        self.modelo = modelo
    }

//    func getAno() -> Int {
    ////        if let anoQueNaoENil = ano {
    ////            return anoQueNaoENil
    ////        }
    ////        return 0
//        return ano ?? 0 // nil-coalescing
//    }

    func getAno() -> Int? {
        return ano
    }

    func setAno(ano: Int) {
        if ano > 0 {
            self.ano = ano
        } else {
            self.ano = nil
        }
    }

    func getModelo() -> String {
        if modelo == "GM-CHEVROLET" {
            return "Chevrolet"
        }
        return modelo
    }

    func setModelo(modelo: String) {
        if modelo == "chevrolet" {
            self.modelo = "GM-CHEVROLET"
        } else {
            self.modelo = modelo
        }
    }
}

let onix = Carro(modelo: "chevrolet")

onix.setModelo(modelo: "chevrolet")

print(onix.getModelo())

print(onix.getAno())

if onix.getAno() == nil {
    print("Não tem ano setado. Setando ano para 2020...")
    onix.setAno(ano: 2020)
    print(onix.getAno())
}

print("Setando ano para -10...")
onix.setAno(ano: -10)
print(onix.getAno())



onix.setAno(ano: 2020)
let lala = "O ano é \(onix.getAno())"
print(lala)
if let ano = onix.getAno() {
    print("O ano é \(ano)")
}

onix.setAno(ano: 2020)

// onix.cor

