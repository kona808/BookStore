//
//  BookController.swift
//  BookStore
//
//  Created by Jacob Perez on 2/20/23.
//

import Foundation

class BookController {
    // MARK: - Properties
    var bookReciever: Book?
    static let shared = BookController()
    var books: [Book] = []
    
    // MARK: - Methods
    func createBook(author: String, title: String, rating: Double, synopsis: String) {
        // Initialize a Book object
        let book = Book(author: author, title: title, rating: rating, synopsis: synopsis)
        books.append(book)
    }
    func updateBook(bookToBeUpdated: Book, newAuthor: String, newTitle: String, newRating: Double, newSynopsis: String) {
//        book.author = newAuthor
//        book.title = newTitle
//        book.rating = newRating
//        book.synopsis = newSynopsis
        
        let updateBook = Book(author: newAuthor, title: newTitle, rating: newRating, synopsis: newSynopsis)
    }
    func deleteBook(bookToDelete: Book){
        guard let indexOfBookToDelete = books.firstIndex(of: bookToDelete) else { return }
        books.remove(at: indexOfBookToDelete)
    }
    
}
