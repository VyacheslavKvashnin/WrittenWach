//
//  Persistence.swift
//  WrittenWach WatchKit Extension
//
//  Created by Вячеслав Квашнин on 23.07.2021.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()


    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "Data")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
    
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
}
