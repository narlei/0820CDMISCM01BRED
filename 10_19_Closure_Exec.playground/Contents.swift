import UIKit

var str = "Hello, playground"


//Exercício 3:
//Crie um código:
//
//Dona Maria mandou sua filha Susan comprar farinha.
//Ao mandar ela comprar farinha, ela disse que quer a Farinha da marca Nordeste.
//Susan foi ao mercado, chegando lá, esqueceu a farinha,
//ligou para sua mãe e pediu primeiro se era a marca Dona Benta, a mãe respondeu que não,
//dai ela perguntou se era Girassol, ela respondeu que não,
//então ela perguntou se era Nordeste, dai a mãe respondeu que sim, e a filha voltou pra casa.
//Use closure.


func susanCompraFarinha(marca: String, ligacao: (_ marcaSugerida: String) -> Bool) {
    // Chegar mercado
    // Esqueceu a marca
    print("linha 21")
    print("Marca DonaBenta, mão respondeu que \(ligacao("Dona Benta"))")
    print("linha 23")
    print("Marca Girassol, mão respondeu que \(ligacao("Girassol"))")
    print("linha 25")
    
    // Susan lembrou
    print("Marca \(marca), mão respondeu que \(ligacao(marca))")
    
    // Volta pra casa
    
}
 
//Dona Maria
susanCompraFarinha(marca: "Nordeste") { (marcaSugerida) -> Bool in
    print("linha 34")
    if marcaSugerida == "Nordeste" {
        return true
    }
    return false
}
