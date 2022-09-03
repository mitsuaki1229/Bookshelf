//
//  ContentCollectionViewCell.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/27.
//

import UIKit

final class ContentCollectionViewCell: UICollectionViewCell {
    
    let imageView = UIImageView(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
        installConstraints()
    }
    
    private func addSubviews() {
        addSubview(imageView)
    }
    
    private func installConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
