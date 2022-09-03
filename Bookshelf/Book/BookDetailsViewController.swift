//
//  BookDetailsViewController.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/27.
//

import UIKit

final class BookDetailsViewController: UIViewController {

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
        view.imageView.image = getImage(url: book?.imgUrl ?? "")
        view.nameBookLabel.text = book?.nameBook
        view.authorLabel.text = "Author:" + book!.author
        view.publisherLabel.text = "Publisher:" + book!.publisher

        // TODO: add book button. Save MyBook.
        // TODO: Set layout.
    }

    private func getImage(url: String) -> UIImage? {
        
        guard Const.kImageDownload else {
            return nil
        }

        let url = URL(string: url)
        do {
            let data = try Data(contentsOf: url!)
            return UIImage(data: data)
        } catch let err {
            print("Error: \(err.localizedDescription)")
            return nil
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
