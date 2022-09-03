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
        
        let button = UIButton()
        button.addTarget(self, action: #selector(buttonPressed(_:)), for: UIControl.Event.touchUpInside)
        button.setTitle("Book details mock button", for: .normal)
        button.tintColor = .black
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        button.backgroundColor = .red
        
        view.backgroundColor = UIColor.white
        
        pushMockBookDetailsController()
    }
    
    // !!!: BookDetailsController is mock use.
    private func pushMockBookDetailsController() {
        let book = Book(idBook: "ask_deru1000",
                        nameBook: "TOEIC L&R テスト 文法問題 でる1000問",
                        publisher: "アスク出版" ,
                        author: "TEX加藤",
                        imgUrl: Const.kCdnEndpoint + "ask_deru1000.jpg",
                        hasContents: 2,
                        hasPurchased: false,
                        isUnlimited: 1,
                        createAt: "")
        
        let bookDetailsController = BookDetailsViewController(book: book)
        
        navigationController?.pushViewController(bookDetailsController, animated: true)
    }
    
    @objc
    private func buttonPressed(_ sender: UIBarButtonItem) {
        pushMockBookDetailsController()
    }
}
