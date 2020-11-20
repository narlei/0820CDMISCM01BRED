//
//  ControllerProtocol.swift
//  MVC-Advanced
//
//  Created by Narlei A Moreira on 19/11/20.
//

import Foundation
import UIKit

protocol ControllerProtocol {
    /// Carrega os dados
    func loadData(onComplete: @escaping (_ success: Bool) -> Void)
    
    /// Retorna o número de células (count do array)
    func getNumberOfRows() -> Int
    
    /// Retorna a Controller da próxima view a ser aberta
    func getNextController(index: Int) -> UIViewController
    
    /// Retorna o texto a ser exibido na cell
    func getTitleForCell(at index: Int) -> String
    
    /// Retorna o título para exibir na navigationDefaultList
    func getViewTitle() -> String
}
