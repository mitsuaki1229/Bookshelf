//
//  LibraryView.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/09/03.
//

import UIKit

class LibraryView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.white
        
        addSubviews()
        installConstraints()
    }
    
    private func addSubviews() {
    }
    
    private func installConstraints() {
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
