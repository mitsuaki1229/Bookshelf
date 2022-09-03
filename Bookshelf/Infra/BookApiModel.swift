//
//  BookApiModel.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/26.
//

import Foundation

struct BookAll: Codable {
    var topCategoryList: [TopCategory]
}

struct TopCategory: Codable {
    var idTopCategory: String
    var nameCategory: String
    var subCategoryList: [SubCategory]
}

struct SubCategory: Codable {
    var idCategory: String
    var nameCategory: String
    var bookList: [Book]
}

struct Book: Codable {
    var idBook: String
    var nameBook: String
    var publisher: String
    var author: String
    var imgUrl: String
    var hasContents: Int
    var hasPurchased: Bool
    var isUnlimited: Int
    var createAt: String
}

class BookApiModel: NSObject {
    func fetchAll(completion: @escaping (BookAll?) -> Void) {
        
        var bookAll: BookAll?
        
        let url: URL = URL(string: Const.kServerEndpoint + "mock/book/all")!
        let task: URLSessionTask = URLSession.shared.dataTask(with: url, completionHandler: {(data, _, error) in
            do {
                let jsonDecoder = JSONDecoder()
                jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
                if data != nil {
                    bookAll = try jsonDecoder.decode(BookAll.self, from: data!)
                    completion(bookAll)
                } else {
                    print("Please set Const.kServerEndpoint & Const.kCdnEndpoint")
                    completion(nil)
                }
            } catch {
                print(error)
                completion(nil)
            }
        })
        task.resume()
    }
}
