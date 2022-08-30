//
//  ContentCollectionViewCell.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/27.
//

import UIKit

final class ShopCollectionViewCell: UICollectionViewCell {
    
    var imageView: UIImageView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        imageView = UIImageView(frame: .zero)
        addSubview(imageView!)

        imageView?.translatesAutoresizingMaskIntoConstraints = false
        imageView?.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        imageView?.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageView?.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView?.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        imageView?.backgroundColor = .blue
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
