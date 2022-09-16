//
//  ViewController.swift
//  CodableCoreDataEntitiesSample
//
//  Created by Ismael Sabri Pérez on 16/9/22.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
    #warning("Comment or uncomment the commented code to get the desired info on console: by default all is uncommented")
        
        super.viewDidLoad()
        
        // MARK: Decoding directly to core data from json
        // Get array of coredata heroes
        guard let heroes: [Hero] = decodeToCoreDataAndGetObjectFrom(json: APIResponse().allHeroes) else {return}
        // Print some info about them
        for hero in heroes {
//            print(hero.name ?? "No name")
//            print(hero.id ?? "No id")
//            print(hero.photo ?? "No photo")
//            print(hero.descript ?? "No description")
//            print(hero.favorite ?? "No favorite info")
        }
        // Get only goku as coredata hero
        guard let goku: [Hero]  = decodeToCoreDataAndGetObjectFrom(json: APIResponse().goku) else {return}
        // Print goku's info about them
        for hero in goku { // For loop as it's an array containing only one hero (goku)
//            print(hero.name ?? "No name")
//            print(hero.id ?? "No id")
//            print(hero.photo ?? "No photo")
//            print(hero.descript ?? "No description")
//            print(hero.favorite ?? "No favorite info")
        }
        
        // MARK: Encoding directly from core data to json string
        // Get the array of heroes: we can use the already declared array heroes or fetch from coredata:
        // Using the array of heroes or goku (which is also an array of heroes:
        guard let heroesAsJsonString = encodeFromCoreDataAndGetObjectsFrom(objectsArray: heroes) else {return}
//        print(heroesAsJsonString)
        // Using the data in coredata. For this sake, import CoreData
        let fetchRequest: NSFetchRequest<Hero> = Hero.fetchRequest()
        let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        guard let allCoreDataHeroes = try? managedObjectContext.fetch(fetchRequest) else {return}
        guard let allCoreDataAsJsonString = encodeFromCoreDataAndGetObjectsFrom(objectsArray: allCoreDataHeroes) else {return}
//        print(allCoreDataAsJsonString)
        
        // MARK: Decoding directly from coredata to json and assign relationships between heros and their locations
        guard let gokuLocation: [Location] = decodeToCoreDataAndGetObjectFrom(json: APIResponse().gokuLocation) else {return}
        // Print some info about location
//        for location in gokuLocation {
//            print(location.id ?? "No id")
//            print(location.longitude ?? "No id")
//            print(location.latitude ?? "No id")
//            print(location.heroId?.id ?? "No id")
//            // When trying to print the hero, we'll get nil as any hero was set
//            guard let id = location.heroId?.id else {return}
//            print("Hero is nil but his id is \(id)")
//            // So we asign a hero for this locations
//            location.hero = goku[0] // The first value as goku is still an array
//            // Then print its name
//            guard let name = location.hero?.name else {return}
//            print("After assigning goku as hero, the hero name is \(name)")
//            // Now we set its hero to nil
//            location.hero = nil
//            print("The hero in this location is now \(location.hero?.name ?? "nil")")
//            // Now we set its hero as we would do it in real life:
//            for hero in heroes {
//                if hero.id == location.heroId?.id {
//                    location.hero = hero
//                    guard let realLifeName = hero.name else {return}
//                    print("After real life assigning, the hero name is \(realLifeName)")
//                    // Inversely, you can add the location to goku
//                    hero.locations = NSSet(array: [location])
//                    guard let locs = hero.locations?.allObjects as? [Location] else {return}
//                    print("After adding location to goku the locations are:")
//                    for loc in locs {
//                        print(loc.id ?? "")
//                    }
//                }
//            }
//        }
        //Ignore the following code
        deleteCoreData(element: "Hero")
        deleteCoreData(element: "Location")
    }
}


// MARK: Decoding directly to coredata
extension ViewController {
    func decodeToCoreDataAndGetObjectFrom<T: Codable>(json: String) -> [T]? {
        // Get the json as data for JSONDecoder to decode
        let jsonAsData = Data(json.utf8)
        // Get a context for JSONDecoder to decode. It has to be the same context where coredata entities are living
        let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        // Get the JSONDecoder. In this case, we use the extended init, that allows JSONDecoder to use de managedObjectContext
        let decoder = JSONDecoder(context: managedObjectContext)
        // Now it's possible to decode the data, which will be always an array of objects, even if only one object is passed as a json string
        guard let coreDataObjectsArray = try? decoder.decode([T].self, from: jsonAsData) else {
            print("Error decoding the json string!")
            return nil
        }
        // If success in decoding, it's mandatory to persist the heroes in coredata
        guard ((try? managedObjectContext.save()) != nil) else {
            print("Error saving decoded objects!")
            return nil
        }
        // Only after saving the objects, return the array
        return coreDataObjectsArray
    }
}

// MARK: Encoding directly from coredata
extension ViewController {
    func encodeFromCoreDataAndGetObjectsFrom<T: Codable>(objectsArray: [T]) -> String? {
        // Get a context for JSONEncoder to encode. It has to be the same context where coredata entities are living
        let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        // Get the JSONEncoder. We use the extended init, that allows JSONDecoder to use de managedObjectContext
        let encoder = JSONEncoder(context: managedObjectContext)
        // Now it's possible to encode the objects, which will be json data
        // It's very important that in the .xcdatamodeld file (the one with the database symbol named CodableCoreDataEntitiesSample) is checked: under Entities -> NameOfTheEntity, in the Inspector, under Class -> module has to be "under current product module". Otherwise, the decoder won't find the entities and will throw an exception
        guard let objectsAsJsonData = try? encoder.encode(objectsArray) else {
            print("Error encoding the core data objects!")
            return nil
        }
        // Return the heroes as a string
        return String(decoding: objectsAsJsonData, as: UTF8.self)
    }
}

// Ignore this, it's just to avoid coredata from storing a lot of objects
extension ViewController {
    func deleteCoreData(element: String) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: element)
        fetchRequest.returnsObjectsAsFaults = false
        
        do {
            let results = try context.fetch(fetchRequest)
            for managedObject in results {
                if let managedObjectData: NSManagedObject = managedObject as? NSManagedObject {
                    context.delete(managedObjectData)
                }
            }
        } catch let error as NSError {
            print("Deleted all my data in myEntity error : \(error) \(error.userInfo)")
        }
    }

}


