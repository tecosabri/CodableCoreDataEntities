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
    #warning("Comment or uncomment the print functions to get the desired info on console: by default all is uncommented")
        
        super.viewDidLoad()
        
        // MARK: Decoding directly to core data from json
        // Get array of coredata heroes
        guard let heroes = decodeToCoreDataAndGetHeroesFrom(json: APIResponse().allHeroes) else {return}
        // Print some info about them
        for hero in heroes {
//            print(hero.name ?? "No name")
//            print(hero.id ?? "No id")
//            print(hero.photo ?? "No photo")
//            print(hero.descript ?? "No description")
//            print(hero.favorite ?? "No favorite info")
        }
        // Get only goku as coredata hero
        guard let goku = decodeToCoreDataAndGetHeroesFrom(json: APIResponse().goku) else {return}
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
        guard let heroesAsJsonString = encodeFromCoreDataAndGetHeroesFrom(heroesArray: heroes) else {return}
//        print(heroesAsJsonString)
        // Using the data in coredata. For this sake, import CoreData
        let fetchRequest: NSFetchRequest<Hero> = Hero.fetchRequest()
        let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        guard let allCoreDataHeroes = try? managedObjectContext.fetch(fetchRequest) else {return}
        guard let allCoreDataAsJsonString = encodeFromCoreDataAndGetHeroesFrom(heroesArray: allCoreDataHeroes) else {return}
//        print(allCoreDataAsJsonString)
    }
    

    

}


// MARK: Decoding directly to coredata
extension ViewController {
    func decodeToCoreDataAndGetHeroesFrom(json: String) -> [Hero]? {
        // Get the json as data for JSONDecoder to decode
        let jsonAsData = Data(json.utf8)
        // Get a context for JSONDecoder to decode. It has to be the same context where coredata entities are living
        let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        // Get the JSONDecoder. In this case, we use the extended init, that allows JSONDecoder to use de managedObjectContext
        let decoder = JSONDecoder(context: managedObjectContext)
        // Now it's possible to decode the data, which will be always an array of heroes, even if only one hero is passed as a json string
        guard let coreDataHeroesArray = try? decoder.decode([Hero].self, from: jsonAsData) else {
            print("Error decoding the json string!")
            return nil
        }
        // If success in decoding, it's mandatory to persist the heroes in coredata
        guard ((try? managedObjectContext.save()) != nil) else {
            print("Error saving decoded objects!")
            return nil
        }
        // Only after saving the objects, return the array
        return coreDataHeroesArray
    }
}

// MARK: Encoding directly from coredata
extension ViewController {
    func encodeFromCoreDataAndGetHeroesFrom(heroesArray: [Hero]) -> String? {
        // Get a context for JSONEncoder to encode. It has to be the same context where coredata entities are living
        let managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        // Get the JSONEncoder. We use the extended init, that allows JSONDecoder to use de managedObjectContext
        let encoder = JSONEncoder(context: managedObjectContext)
        // Now it's possible to encode the heroes, which will be json data
        // It's very important that in the .xcdatamodeld file (the one with the database symbol named CodableCoreDataEntitiesSample) is checked: under Entities -> Hero, in the Inspector, under Class -> module has to be "under current product module". Otherwise, the decoder won't find the entities and will throw an exception
        guard let heroesAsJsonData = try? encoder.encode(heroesArray) else {
            print("Error encoding the core data heroes!")
            return nil
        }
        // Return the heroes as a string
        return String(decoding: heroesAsJsonData, as: UTF8.self)
    }
}
