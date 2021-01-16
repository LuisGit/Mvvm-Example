//
//  CoreDataManager.swift
//  LuisMvvmExample
//
//  Created by Luis Alvarado on 1/15/21.
//

import CoreData
import UIKit

final class CoreDataManager {
    
    //lazy -> we won't instantiate this until we really need it.
    lazy var persistentContainer: NSPersistentContainer = {
        let persistentContainer = NSPersistentContainer(name: "EventsApp")
        persistentContainer.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return persistentContainer
    }()
    
    var moc: NSManagedObjectContext {
        persistentContainer.viewContext
    }
    
    func saveEvent(name: String, date: Date, image: UIImage) {
        let event = Event(context: moc)
        event.setValue(name, forKey: "name")
        let imageData = image.jpegData(compressionQuality: 1)
        event.setValue(imageData, forKey: "image")
        event .setValue(date, forKey: "date")
        
        do {
            try moc.save()
        } catch {
            print (error)
        }
    }
    
    func fetchEvents() -> [Event] {
        do {
            let fetchRequest = NSFetchRequest<Event>(entityName: "Event")
            let events = try moc.fetch(fetchRequest)
            return events
        } catch {
          print(error)
            return []
        }
    }
}
