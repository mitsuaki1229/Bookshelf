//
//  BookDetailsView.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/31.
//

import UIKit

class BookDetailsView: UIView {
    
    let imageView = UIImageView(frame: .zero)
    let nameBookLabel = { () -> UILabel in
        let label = UILabel()
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    let authorLabel = { () -> UILabel in
        let label = UILabel()
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    let publisherLabel = { () -> UILabel in
        let label = UILabel()
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    let myBookButton = { () -> UIButton in
        let button = UIButton()
        button.setTitle("Add Mybook", for: .normal)
        return button
    }()
    let purchaseButton = { () -> UIButton in
        let button = UIButton()
        button.setTitle("Purchase", for: .normal)
        return button
    }()
    private let goalView = { () -> UIView in
        let view = UIView()
        
        let label = { () -> UILabel in
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.thin)
            label.textColor = .gray
            label.textAlignment = .left
            label.sizeToFit()
            label.text = "Mastery rate target, Expiration date."
            return label
        }()

        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        return view
    }()
    private let learningRateView = { () -> UIView in
        let view = UIView()
        
        let label = { () -> UILabel in
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.thin)
            label.textColor = .gray
            label.textAlignment = .left
            label.sizeToFit()
            label.text = "Learning rate."
            return label
        }()

        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        return view
    }()
    private let learningTimeView = { () -> UIView in
        let view = UIView()
        
        let label = { () -> UILabel in
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.thin)
            label.textColor = .gray
            label.textAlignment = .left
            label.sizeToFit()
            label.text = "Learning time."
            return label
        }()

        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        return view
    }()
    private let learningMethodView = { () -> UIView in
        let view = UIView()
        
        let label = { () -> UILabel in
            let label = UILabel()
            label.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.thin)
            label.textColor = .gray
            label.textAlignment = .left
            label.sizeToFit()
            label.text = "Learning method."
            return label
        }()

        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemIndigo
        
        addSubviews()
        installConstraints()

        // !!!: debug cooler
        imageView.backgroundColor = .yellow
        nameBookLabel.backgroundColor = .green
        authorLabel.backgroundColor = .brown
        publisherLabel.backgroundColor = .cyan
        myBookButton.backgroundColor = .red
        purchaseButton.backgroundColor = .darkGray
        goalView.backgroundColor = .systemPink
        learningRateView.backgroundColor = .orange
        learningTimeView.backgroundColor = .purple
        learningMethodView.backgroundColor = .magenta
        // !!!: debug cooler
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
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        nameBookLabel.translatesAutoresizingMaskIntoConstraints = false
        nameBookLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        nameBookLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        nameBookLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameBookLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        authorLabel.translatesAutoresizingMaskIntoConstraints = false
        authorLabel.topAnchor.constraint(equalTo: nameBookLabel.bottomAnchor).isActive = true
        authorLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        authorLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        authorLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        publisherLabel.translatesAutoresizingMaskIntoConstraints = false
        publisherLabel.topAnchor.constraint(equalTo: authorLabel.bottomAnchor).isActive = true
        publisherLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        publisherLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        publisherLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        myBookButton.translatesAutoresizingMaskIntoConstraints = false
        myBookButton.topAnchor.constraint(equalTo: publisherLabel.bottomAnchor).isActive = true
        myBookButton.leadingAnchor.constraint(equalTo: imageView.trailingAnchor).isActive = true
        myBookButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        myBookButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        purchaseButton.translatesAutoresizingMaskIntoConstraints = false
        purchaseButton.topAnchor.constraint(equalTo: publisherLabel.bottomAnchor).isActive = true
        purchaseButton.leadingAnchor.constraint(equalTo: myBookButton.trailingAnchor).isActive = true
        purchaseButton.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        purchaseButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        goalView.translatesAutoresizingMaskIntoConstraints = false
        goalView.topAnchor.constraint(equalTo: imageView.bottomAnchor).isActive = true
        goalView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        goalView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        goalView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        learningRateView.translatesAutoresizingMaskIntoConstraints = false
        learningRateView.topAnchor.constraint(equalTo: goalView.bottomAnchor).isActive = true
        learningRateView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        learningRateView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        learningRateView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        learningTimeView.translatesAutoresizingMaskIntoConstraints = false
        learningTimeView.topAnchor.constraint(equalTo: learningRateView.bottomAnchor).isActive = true
        learningTimeView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        learningTimeView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        learningTimeView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
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
