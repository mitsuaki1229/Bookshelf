//
//  ContentTableViewCell.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/26.
//

import UIKit

final class ContentTableViewCell: UITableViewCell {
    
    var collectionView: UICollectionView?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize.zero
        flowLayout.minimumInteritemSpacing = 0
        flowLayout.minimumLineSpacing = 0
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        collectionView = UICollectionView(
            frame: self.frame ,
            collectionViewLayout: flowLayout
        )

        addSubview(collectionView!)
        collectionView?.register(ShopCollectionViewCell.self, forCellWithReuseIdentifier: "ContentCollectionViewCell")
        
        collectionView?.backgroundColor = .yellow
        
        collectionView?.translatesAutoresizingMaskIntoConstraints = false
        collectionView?.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
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
