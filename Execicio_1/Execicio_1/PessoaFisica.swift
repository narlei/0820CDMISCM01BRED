//
//  PessoaFisica.swift
//  Execicio_1
//
//  Created by Narlei A Moreira on 18/09/20.
//

import Foundation

class PessoaFisica: Pessoa {
    var cpf: String
    
    init(nome: String, cpf: String) {
        self.cpf = cpf
        super.init(nome: nome)
    }
}

extension PessoaFisica: FormatadorProtocol {
    func getFormatatado() -> String {
        return "\(nome) \(cpf)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Física: \(nome) \(cpf)"
    }
}
