//
//  PessoaJuridica.swift
//  Execicio_1
//
//  Created by Narlei A Moreira on 18/09/20.
//

import Foundation

class PessoaJuridica: Pessoa {
    var cnpj: String

    init(nome: String, cnpj: String) {
        self.cnpj = cnpj
        super.init(nome: nome)
    }
}

extension PessoaJuridica: FormatadorProtocol {
    func getFormatatado() -> String {
        return "\(nome) \(cnpj)"
    }
    
    func getFormatadoParaUsuario() -> String {
        return "Pessoa Jurídica: \(nome) \(cnpj)"
    }
}
