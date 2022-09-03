//
//  MyBookModel.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/09/03.
//

import Foundation
import RealmSwift

class MyBookModel: NSObject {
    
    func getBy(idBook: String) -> MyBook? {
        var realm: Realm?
        
        do {
            realm = try Realm()
        } catch {
            print("Realm error \(error)")
        }
        
        return realm?.objects(MyBook.self).filter("idBook == %@", idBook).first
    }
    
    func add(idBook: String) {
        
        let myBook = MyBook()
        myBook.idBook = idBook
        
        var realm: Realm?
        
        do {
            realm = try Realm()
        } catch {
            print("Realm error \(error)")
        }
        
        do {
            try realm?.write {
                realm?.add(myBook)
            }
        } catch {
            print("Add error \(error)")
        }
    }
    
    func remove(idBook: String) {
        
        var realm: Realm?
        
        do {
            realm = try Realm()
        } catch {
            print("Realm error \(error)")
        }
        
        let myBook = realm?.objects(MyBook.self).filter("idBook == %@", idBook).first
        
        do {
            try realm?.write {
                realm?.delete(myBook!)
            }
        } catch {
            print("Delete error \(error)")
        }
    }
}
