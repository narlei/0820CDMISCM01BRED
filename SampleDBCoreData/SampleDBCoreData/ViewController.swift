//
//  ViewController.swift
//  SampleDBCoreData
//
//  Created by Narlei A Moreira on 09/12/20.
//

import CoreData
import UIKit

class ViewController: UIViewController {
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "SampleDBCoreData")
        container.loadPersistentStores(completionHandler: { _, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Salvar novo objeto
        let context = persistentContainer.viewContext
        let person = Person(context: context)
        person.name = "Jessica A. S."

        try? context.save()

        loadData { persons in
            if let persons = persons {
                for person in persons {
                    print(person.name)
                    self.edit(id: person.objectID, name: "Jessica sem acento")
//                    self.delete(id: person.objectID)
                }
            }
        }
    }

    // Carregar a lista de person que já está salva
    func loadData(completion: ([Person]?) -> Void) {
        let context = persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
        let result = try? context.fetch(request)
        let arrayPerson = result as? [Person]
        completion(arrayPerson)
    }
    
    func edit(id: NSManagedObjectID, name: String) {
        let context = persistentContainer.viewContext
        let person = context.object(with: id) as? Person
        person?.name = name

        try? context.save()
    }
    
    func delete(id: NSManagedObjectID) {
        let context = persistentContainer.viewContext
        let person = context.object(with: id)
        context.delete(person)
        
        try? context.save()
    }
}
