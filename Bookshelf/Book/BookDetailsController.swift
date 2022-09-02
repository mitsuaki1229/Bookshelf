//
//  BookDetailsController.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/27.
//

import UIKit

final class BookDetailsController: UIViewController {

    var book: Book?

    override func loadView() {
        view = BookDetailsView()
    }

    convenience init(book: Book) {
        self.init(title: book.nameBook, content: book)
    }

    init(title: String, content: Book) {
        super.init(nibName: nil, bundle: nil)
        book = content
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = self.view as! BookDetailsView
        view.nameBookLabel.text = book?.nameBook
        view.authorLabel.text = "Author:" + book!.author
        view.publisherLabel.text = "Publisher:" + book!.publisher

        // TODO: add book button. Save MyBook.
        // TODO: Set layout.
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
