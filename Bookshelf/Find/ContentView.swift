//
//  ContentView.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/09/03.
//

import UIKit

class ContentView: UIView {

    let tableView = UITableView(frame: .zero)

    override init(frame: CGRect) {
        super.init(frame: frame)

        // !!!: debug cooler
        backgroundColor = .systemIndigo
        // !!!: debug cooler
        
        addSubviews()
        installConstraints()
    }
    
    func addSubviews() {
        addSubview(tableView)
    }
    
    func installConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
