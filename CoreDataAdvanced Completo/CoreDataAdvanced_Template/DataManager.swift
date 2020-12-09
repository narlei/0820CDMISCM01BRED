//
//  DataManager.swift
//  CoreDataAdvanced_Template
//
//  Created by Nadilson Santana on 20/07/19.
//  Copyright © 2019 DigitalHouse. All rights reserved.
//

import CoreData

//protocol DataManagerProtocol {
//    func saveInformation(name: String, passportNumber: String)
//    func loadInformation(completion: ([Person])-> Void)
//}
//
//class DataManagerRealm: DataManagerProtocol {
//
//}

class DataManager: NSObject {

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "CoreDataAdvanced_Template")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    var arrayPerson:[Person] = []
    var arrayCar:[Vehicals] = []
    
    func saveInformation(name: String, passportNumber: String){
        let context = persistentContainer.viewContext
        let person = Person(context: context)
        let passport = Passport(context: context)
        person.name = name
        passport.number = passportNumber
        person.passport = passport
        try? context.save()
    }
    
    func loadInformation(completion: ([Person])-> Void) {
        let context = persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
        let result = try? context.fetch(request)
        arrayPerson = result as? [Person] ?? []
        completion(arrayPerson)
    }
    
    func delete(id: NSManagedObjectID, completion: (Bool) -> Void) {
        let context = persistentContainer.viewContext
        let obj = context.object(with: id)
        context.delete(obj)
        do {
            try context.save()
            completion(true)
        }catch{
            completion(false)
        }
    }
    
    func saveCar(modelName:String,id:NSManagedObjectID, completion: (Bool) -> Void) {
        let context = persistentContainer.viewContext
        let car = Vehicals(context: context)
        let person = context.object(with: id) as? Person
        car.modelName = modelName
        person?.addToVehicals(car)
        do {
            try context.save()
            completion(true)
        } catch {
            print("Deu Ruim")
            completion(false)
        }
    }
    
    func loadCar(id:NSManagedObjectID, completion: ([Vehicals]) -> Void){
        let context = persistentContainer.viewContext
        let person = context.object(with: id) as? Person
        completion(person?.vehicals?.allObjects as? [Vehicals] ?? [])
    }
}
