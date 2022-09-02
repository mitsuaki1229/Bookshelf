//
//  HomeViewController.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/24.
//

import UIKit

final class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigation()
        
        view.backgroundColor = UIColor.white

        // !!!: BookDetailsController is mock use.

        let book = Book(idBook: "ask_deru1000",
                        nameBook:"TOEIC L&R テスト 文法問題 でる1000問",
                        publisher: "アスク出版" ,
                        author: "TEX加藤",
                        imgUrl: Const.kCdnEndpoint + "ask_deru1000.jpg",
                        hasContents: 2,
                        hasPurchased: false,
                        isUnlimited: 1,
                        createAt: "")

        let bookDetailsController = BookDetailsViewController(book: book)

        view.addSubview(bookDetailsController.view)
        bookDetailsController.didMove(toParent: self)
        
        bookDetailsController.view.translatesAutoresizingMaskIntoConstraints = false
        bookDetailsController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        bookDetailsController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bookDetailsController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bookDetailsController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }

    func setNavigation() {
        navigationItem.title = "Book introduction"

        let backButtonItem = UIBarButtonItem(title: "←", style: .done, target: self, action: #selector(buttonPressed(_:)))
        navigationItem.leftBarButtonItem = backButtonItem

        let hamburgerButtonItem = UIBarButtonItem(title: ":", style: .done, target: self, action: #selector(buttonPressed(_:)))
        navigationItem.rightBarButtonItem = hamburgerButtonItem
    }

    @objc
    func buttonPressed(_ sender: UIBarButtonItem) {
        print("search button touched.")
    }
}
