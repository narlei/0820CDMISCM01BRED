import UIKit

protocol Imprimivel {
    func pegarConteudo()
}

class Contrato: Imprimivel {
    var numeroClausulas:Int = 10
    func pegarConteudo() {
        print("Sou um contrato muito legal com \(numeroClausulas) clausulas")
    }
}

class Foto: Imprimivel {
    var resolucao: String = "16 megapixels"
    func pegarConteudo() {
        print("Sou uma selfie com \(resolucao)")
    }
}

class Documento: Imprimivel {
    var idioma = "portugues"
    func pegarConteudo() {
        print("Sou um documento do Word \(idioma)")
    }
}

class Boleto: Imprimivel {
    var codBarras = "12739719827 128371273 1273897198273 128391729837 12983619826739"
    func pegarConteudo() {
        print("Vai ter que pagar hj! \(codBarras)")
    }
}


class Impressora {
    private var arrayImprimiveis = [Imprimivel]()
    
    func imprimirTudo() {
        for item in arrayImprimiveis {
            print(imprimivel: item)
        }
    }
    
    private func print(imprimivel: Imprimivel) {
        imprimivel.pegarConteudo()
    }

    func agregarImprimivel(imprimivel: Imprimivel) {
        arrayImprimiveis.append(imprimivel)
    }
}


let boleto = Boleto()
let impressoraHp = Impressora()

impressoraHp.agregarImprimivel(imprimivel: boleto)


impressoraHp.agregarImprimivel(imprimivel: Contrato())


impressoraHp.agregarImprimivel(imprimivel: Foto())


impressoraHp.agregarImprimivel(imprimivel: Documento())
impressoraHp.imprimirTudo()
