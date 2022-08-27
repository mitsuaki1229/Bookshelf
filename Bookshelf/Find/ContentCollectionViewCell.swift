//
//  ContentCollectionViewCell.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/27.
//

import UIKit

class ShopCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView?
    var textLabel: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        textLabel = UILabel(frame: .zero)
        textLabel?.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.thin)
        textLabel?.textColor = UIColor(red: 95 / 255, green: 102 / 255, blue: 108 / 255, alpha: 1)
        textLabel?.textAlignment = .center
        textLabel?.sizeToFit()
        
        addSubview(textLabel!)
        backgroundColor = .blue
        textLabel?.translatesAutoresizingMaskIntoConstraints = false
        textLabel?.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        textLabel?.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        textLabel?.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        textLabel?.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
