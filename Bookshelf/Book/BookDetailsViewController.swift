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
        
        setNavigation()
        updateMyBookButton()
        
        let view = self.view as! BookDetailsView
        view.imageView.image = getImage(url: book?.imgUrl ?? "")
        view.nameBookLabel.text = book?.nameBook
        view.authorLabel.text = "Author:" + book!.author
        view.publisherLabel.text = "Publisher:" + book!.publisher
        
        view.myBookButton.addTarget(self, action: #selector(myBookButtonPressed(_:)), for: UIControl.Event.touchUpInside)
        view.purchaseButton.addTarget(self, action: #selector(purchaseButtonPressed(_:)), for: UIControl.Event.touchUpInside)
    }
    
    private func setNavigation() {
        navigationItem.title = "Book introduction"
        
        let hamburgerButtonItem = UIBarButtonItem(title: ":", style: .done, target: self, action: #selector(buttonPressed(_:)))
        navigationItem.rightBarButtonItem = hamburgerButtonItem
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
    
    private func updateMyBookButton() {
        
        let view = self.view as! BookDetailsView
        
        let myBookModel = MyBookModel()
        let myBook = myBookModel.getBy(idBook: book!.idBook)
        if myBook != nil {
            view.myBookButton.setTitle("Add Mybooks", for: .normal)
            view.myBookButton.setTitleColor(.red, for: .normal)
            view.myBookButton.titleLabel?.adjustsFontSizeToFitWidth = true
            view.myBookButton.layer.cornerRadius = 5
            view.myBookButton.layer.borderColor = UIColor.red.cgColor
            view.myBookButton.layer.borderWidth = 2
            view.myBookButton.backgroundColor = .white
        } else {
            view.myBookButton.setTitle("Remove MyBooks", for: .normal)
            view.myBookButton.setTitleColor(.lightGray, for: .normal)
            view.myBookButton.titleLabel?.adjustsFontSizeToFitWidth = true
            view.myBookButton.layer.cornerRadius = 5
            view.myBookButton.layer.borderColor = UIColor.lightGray.cgColor
            view.myBookButton.layer.borderWidth = 2
            view.myBookButton.backgroundColor = .white
        }
    }
    
    @objc
    private func myBookButtonPressed(_ sender: UIBarButtonItem) {
        print("my book button touched.")
        
        let myBookModel = MyBookModel()
        let myBook = myBookModel.getBy(idBook: book!.idBook)
        if myBook != nil {
            myBookModel.remove(idBook: book!.idBook)
        } else {
            myBookModel.add(idBook: book!.idBook)
        }
        updateMyBookButton()
    }
    
    @objc
    private func purchaseButtonPressed(_ sender: UIBarButtonItem) {
        print("purchase button touched.")
    }
    
    @objc
    private func buttonPressed(_ sender: UIBarButtonItem) {
        print("button touched.")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
