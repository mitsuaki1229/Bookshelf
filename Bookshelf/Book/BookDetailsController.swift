//
//  BookDetailsController.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/27.
//

import UIKit

final class BookDetailsController: UIViewController {
    
    var book: Book?
    
    convenience init(book: Book) {
        self.init(title: book.nameBook, content: book)
    }
    
    init(title: String, content: Book) {
        super.init(nibName: nil, bundle: nil)
        book = content
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        let imageView = UIImageView(frame: .zero)
        view.addSubview(imageView)
        imageView.backgroundColor = .yellow
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        let nameBookLabel = UILabel(frame: .zero)
        view.addSubview(nameBookLabel)
        nameBookLabel.backgroundColor = .green
        nameBookLabel.text = book?.nameBook
        nameBookLabel.adjustsFontSizeToFitWidth = true
        
        nameBookLabel.translatesAutoresizingMaskIntoConstraints = false
        nameBookLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        nameBookLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        nameBookLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        nameBookLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        let authorLabel = UILabel(frame: .zero)
        view.addSubview(authorLabel)
        authorLabel.backgroundColor = .brown
        authorLabel.text = "Author:" + book!.author
        authorLabel.adjustsFontSizeToFitWidth = true
        
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.topAnchor.constraint(equalTo: nameBookLabel.bottomAnchor).isActive = true
        authorLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        authorLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        authorLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        let publisherLabel = UILabel(frame: .zero)
        view.addSubview(publisherLabel)
        publisherLabel.backgroundColor = .cyan
        
        publisherLabel.text = "Publisher:" + book!.publisher
        publisherLabel.adjustsFontSizeToFitWidth = true
        
        publisherLabel.translatesAutoresizingMaskIntoConstraints = false
        publisherLabel.topAnchor.constraint(equalTo: authorLabel.bottomAnchor).isActive = true
        publisherLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        publisherLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        publisherLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        let myBookButton = UIButton(frame: .zero)
        view.addSubview(myBookButton)
        myBookButton.backgroundColor = .red
        myBookButton.setTitle("Add Mybook", for: .normal)
        
        myBookButton.translatesAutoresizingMaskIntoConstraints = false
        myBookButton.topAnchor.constraint(equalTo: publisherLabel.bottomAnchor).isActive = true
        myBookButton.leadingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        myBookButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        myBookButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        let purchaseButton = UIButton(frame: .zero)
        view.addSubview(purchaseButton)
        purchaseButton.backgroundColor = .darkGray
        purchaseButton.setTitle("Purchase", for: .normal)
        // TODO: add book button. Save MyBook.
        
        purchaseButton.translatesAutoresizingMaskIntoConstraints = false
        purchaseButton.topAnchor.constraint(equalTo: publisherLabel.bottomAnchor).isActive = true
        purchaseButton.leadingAnchor.constraint(equalTo: myBookButton.trailingAnchor).isActive = true
        purchaseButton.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        purchaseButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // TODO: Set layout.
        let goalView = UIView(frame: .zero)
        view.addSubview(goalView)
        goalView.backgroundColor = .systemPink
        
        goalView.translatesAutoresizingMaskIntoConstraints = false
        goalView.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        goalView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        goalView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        goalView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        let learningRateView = UIView(frame: .zero)
        view.addSubview(learningRateView)
        learningRateView.backgroundColor = .orange
        
        learningRateView.translatesAutoresizingMaskIntoConstraints = false
        learningRateView.topAnchor.constraint(equalTo: goalView.bottomAnchor).isActive = true
        learningRateView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        learningRateView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        learningRateView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        let learningTimeView = UIView(frame: .zero)
        view.addSubview(learningTimeView)
        learningTimeView.backgroundColor = .purple
        
        learningTimeView.translatesAutoresizingMaskIntoConstraints = false
        learningTimeView.topAnchor.constraint(equalTo: learningRateView.bottomAnchor).isActive = true
        learningTimeView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        learningTimeView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        learningTimeView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        let learningMethodView = UIView(frame: .zero)
        view.addSubview(learningMethodView)
        learningMethodView.backgroundColor = .systemIndigo
        
        learningMethodView.translatesAutoresizingMaskIntoConstraints = false
        learningMethodView.topAnchor.constraint(equalTo: learningTimeView.bottomAnchor).isActive = true
        learningMethodView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        learningMethodView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        learningMethodView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
