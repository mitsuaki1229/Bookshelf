//
//  FindView.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/09/02.
//

import UIKit

class FindView: UIView {

    let button = { () -> UIButton in
        let button = UIButton()
        button.tintColor = .white
        button.backgroundColor = UIColor.red
        button.layer.cornerRadius = 25
        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)

#if DEBUG
        backgroundColor = .systemIndigo
#endif

        addSubviews()
        installConstraints()
    }
    
    func addSubviews() {
        addSubview(button)
    }
    
    func installConstraints() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60).isActive = true
        button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30).isActive = true
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        button.widthAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
