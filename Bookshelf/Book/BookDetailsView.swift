//
//  BookDetailsView.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/31.
//

import UIKit

class BookDetailsView: UIView {
    
    let imageView = UIImageView(frame: .zero)
    let nameBookLabel = UILabel(frame: .zero)
    let authorLabel = UILabel(frame: .zero)
    let publisherLabel = UILabel(frame: .zero)
    let myBookButton = UIButton(frame: .zero)
    let purchaseButton = UIButton(frame: .zero)
    let goalView = UIView(frame: .zero)
    let learningRateView = UIView(frame: .zero)
    let learningTimeView = UIView(frame: .zero)
    let learningMethodView = UIView(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .systemIndigo
        
        addSubviews()
        installConstraints()
    }
    
    func addSubviews() {
        addSubview(imageView)
        addSubview(nameBookLabel)
        addSubview(authorLabel)
        addSubview(publisherLabel)
        addSubview(myBookButton)
        addSubview(purchaseButton)
        addSubview(goalView)
        addSubview(learningRateView)
        addSubview(learningTimeView)
        addSubview(learningMethodView)
    }
    
    func installConstraints() {

        imageView.backgroundColor = .yellow
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true

        nameBookLabel.backgroundColor = .green
        nameBookLabel.adjustsFontSizeToFitWidth = true
        
        nameBookLabel.translatesAutoresizingMaskIntoConstraints = false
        nameBookLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        nameBookLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        nameBookLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameBookLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true

        authorLabel.backgroundColor = .brown
        authorLabel.adjustsFontSizeToFitWidth = true
        
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.topAnchor.constraint(equalTo: nameBookLabel.bottomAnchor).isActive = true
        authorLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        authorLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        authorLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true

        publisherLabel.backgroundColor = .cyan
        publisherLabel.adjustsFontSizeToFitWidth = true
        
        publisherLabel.translatesAutoresizingMaskIntoConstraints = false
        publisherLabel.topAnchor.constraint(equalTo: authorLabel.bottomAnchor).isActive = true
        publisherLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        publisherLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        publisherLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true

        myBookButton.backgroundColor = .red
        myBookButton.setTitle("Add Mybook", for: .normal)

        myBookButton.translatesAutoresizingMaskIntoConstraints = false
        myBookButton.topAnchor.constraint(equalTo: publisherLabel.bottomAnchor).isActive = true
        myBookButton.leadingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        myBookButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        myBookButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        purchaseButton.backgroundColor = .darkGray
        purchaseButton.setTitle("Purchase", for: .normal)

        purchaseButton.translatesAutoresizingMaskIntoConstraints = false
        purchaseButton.topAnchor.constraint(equalTo: publisherLabel.bottomAnchor).isActive = true
        purchaseButton.leadingAnchor.constraint(equalTo: myBookButton.trailingAnchor).isActive = true
        purchaseButton.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        purchaseButton.heightAnchor.constraint(equalToConstant: 40).isActive = true

        goalView.backgroundColor = .systemPink
        
        goalView.translatesAutoresizingMaskIntoConstraints = false
        goalView.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        goalView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        goalView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        goalView.heightAnchor.constraint(equalToConstant: 40).isActive = true

        learningRateView.backgroundColor = .orange
        
        learningRateView.translatesAutoresizingMaskIntoConstraints = false
        learningRateView.topAnchor.constraint(equalTo: goalView.bottomAnchor).isActive = true
        learningRateView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        learningRateView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        learningRateView.heightAnchor.constraint(equalToConstant: 40).isActive = true

        learningTimeView.backgroundColor = .purple
        
        learningTimeView.translatesAutoresizingMaskIntoConstraints = false
        learningTimeView.topAnchor.constraint(equalTo: learningRateView.bottomAnchor).isActive = true
        learningTimeView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        learningTimeView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        learningTimeView.heightAnchor.constraint(equalToConstant: 40).isActive = true

        learningMethodView.backgroundColor = .systemIndigo
        
        learningMethodView.translatesAutoresizingMaskIntoConstraints = false
        learningMethodView.topAnchor.constraint(equalTo: learningTimeView.bottomAnchor).isActive = true
        learningMethodView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        learningMethodView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        learningMethodView.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
