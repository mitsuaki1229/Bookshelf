//
//  HomeView.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/09/03.
//

import UIKit

class HomeView: UIView {
    
    let button = {() -> UIButton in
        let button = UIButton()
        button.setTitle("Book details mock button", for: .normal)
        button.tintColor = .black
        button.backgroundColor = .red
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.white
        
        addSubviews()
        installConstraints()
    }
    
    private func addSubviews() {
        addSubview(button)
    }
    
    private func installConstraints() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: topAnchor).isActive = true
        button.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
