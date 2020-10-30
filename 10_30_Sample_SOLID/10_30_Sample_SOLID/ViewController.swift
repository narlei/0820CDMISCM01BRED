//
//  ViewController.swift
//  10_30_Sample_SOLID
//
//  Created by Narlei A Moreira on 30/10/20.
//

import UIKit


class ListSection {
    var title: String
    var items: [Item]
    
    init(title: String, items: [Item]) {
        self.title = title
        self.items = items
    }
}

class Item {
    var name: String
    var id: Int
    var isCompleted: Bool

    init(name: String, id: Int, isCompleted: Bool) {
        self.name = name
        self.id = id
        self.isCompleted = isCompleted
    }
}

class ViewController: UIViewController {

    var arraySectios = [ListSection]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func didSelectRowAtIndexPath() {
        openOptions(item: Item(name: "Name", id: 10, isCompleted: true))
        openEditOption(item: Item(name: "Name", id: 10, isCompleted: true))
    }
    
    func openOptions(item: Item) {
        let alert = UIAlertController(title: "Opções", message: "", preferredStyle: .actionSheet)

        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel) { (UIAlertAction) in

        })
        
        alert.addAction(UIAlertAction(title: "Excluir", style: .destructive) { (UIAlertAction) in
            self.openDeleteItemConfirmation(item: item)
        })
        
        alert.addAction(UIAlertAction(title: "Editar", style: .default) { (UIAlertAction) in
            self.openEditOption(item: item)
        })
        
        var markOption = "Marcar como concluído"
        if item.isCompleted {
            markOption = "Marcar como aberto"
        }
        
        alert.addAction(UIAlertAction(title: markOption, style: .default) { (UIAlertAction) in
            item.isCompleted = !item.isCompleted // toggle
        })

        self.present(alert, animated: true) {
           
        }
    }
    
    func openDeleteItemConfirmation(item: Item) {
        
    }
    
    func openEditOption(item: Item) {
        
    }
    
    
    func openCreateOption(item: Item?) {
        var alertTitle = "Criar"
        if let item = item {
            alertTitle = "Editar \(item.name)"
        }
        
        
        let alert = UIAlertController(title: alertTitle, message: "Informe o nome", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Salvar", style: .default) { (UIAlertAction) in
            
            if item != nil { // Editando
                item?.name = "NOVO NOME"
            } else {
//                cria item novo e add no array
            }
            
        })
    }
    
//    func deleteItem(item: Item) {
//        let index = array.firtIndexOf(
//
//        )
//        array.removet(at: index)
//    }
    
}
