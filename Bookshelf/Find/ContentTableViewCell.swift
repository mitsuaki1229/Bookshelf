//
//  ContentTableViewCell.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/26.
//

import UIKit

final class ContentTableViewCell: UITableViewCell {
    
    var titleLabel: UILabel?
    var collectionView: UICollectionView?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        titleLabel = UILabel(frame: .zero)
        titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.thin)
        titleLabel?.textColor = UIColor(red: 95 / 255, green: 102 / 255, blue: 108 / 255, alpha: 1)
        titleLabel?.textAlignment = .left
        titleLabel?.sizeToFit()
        
        addSubview(titleLabel!)
        
        titleLabel?.backgroundColor = .green
        
        titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        titleLabel?.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        titleLabel?.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        titleLabel?.heightAnchor.constraint(equalToConstant: 30.0).isActive = true

        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.minimumLineSpacing = 10
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        flowLayout.scrollDirection = .horizontal
        
        collectionView = UICollectionView(
            frame: self.frame,
            collectionViewLayout: flowLayout
        )

        addSubview(collectionView!)
        collectionView?.register(ShopCollectionViewCell.self, forCellWithReuseIdentifier: "ContentCollectionViewCell")

        collectionView?.backgroundColor = .yellow

        collectionView?.translatesAutoresizingMaskIntoConstraints = false
        collectionView?.topAnchor.constraint(equalTo: titleLabel!.bottomAnchor).isActive = true
        collectionView?.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        collectionView?.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        collectionView?.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDataSource & UICollectionViewDelegate>
        (dataSourceDelegate: D, forRow row: Int) {

        collectionView?.delegate = dataSourceDelegate
        collectionView?.dataSource = dataSourceDelegate
        collectionView?.tag = row
        collectionView?.reloadData()
    }
}
