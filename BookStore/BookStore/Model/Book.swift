//
//  Book.swift
//  BookStore
//
//  Created by Jacob Perez on 2/19/23.
//

import Foundation

class Book {
    
  //MARK: - Properties
    var author: String
    var title: String
    var lastUpdated: Date
    var rating: Double
    var synopsis: String
    let uuid: String
    
    init(author: String, title: String, lastUpdated: Date = Date(), rating: Double, synopsis: String, uuid: String = UUID().uuidString) {
        self.author = author
        self.title = title
        self.lastUpdated = lastUpdated
        self.rating = rating
        self.synopsis = synopsis
        self.uuid = uuid
    }
}
// MARK: - Extentions
extension Book: Equatable {
    static func == (lhs: Book, rhs: Book) -> Bool {
        return lhs.uuid == rhs.uuid
//        lhs.author == rhs.author &&
//        lhs.title == rhs.title &&
//        lhs.synopsis == rhs.synopsis
    }
}
