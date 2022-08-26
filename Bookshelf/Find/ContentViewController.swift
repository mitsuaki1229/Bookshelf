//
//  ContentViewController.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/25.
//

import UIKit

final class ContentViewController: UIViewController {
    convenience init(topCategory: TopCategory) {
        self.init(title: topCategory.nameCategory, content: "テスト")
    }

    init(title: String, content: String) {
        super.init(nibName: nil, bundle: nil)
        self.title = title

        // TODO: UISCrollView
        // TODO: UICollectionView

        let label = UILabel(frame: .zero)
        label.font = UIFont.systemFont(ofSize: 50, weight: UIFont.Weight.thin)
        label.textColor = UIColor(red: 95 / 255, green: 102 / 255, blue: 108 / 255, alpha: 1)
        label.textAlignment = .center
        label.text = content
        label.sizeToFit()

        view.addSubview(label)
        view.backgroundColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        label.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
