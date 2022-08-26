//
//  ContentTableViewCell.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/26.
//

import UIKit

final class ContentTableViewCell: UITableViewCell {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
