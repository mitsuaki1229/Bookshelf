//
//  MyBook.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/09/03.
//

import Foundation
import RealmSwift

class MyBook: Object {
    @objc dynamic var idBook = ""
    
    override static func primaryKey() -> String? {
        return "idBook"
    }
}
