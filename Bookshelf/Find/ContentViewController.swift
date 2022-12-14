//
//  ContentViewController.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/25.
//

import UIKit

private let kContentTableViewheight = 150

final class ContentViewController: UIViewController {
    
    private var subCategoryList: [SubCategory]
    
    override func loadView() {
        view = ContentView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    convenience init(topCategory: TopCategory) {
        self.init(title: topCategory.nameCategory, content: topCategory.subCategoryList)
    }
    
    init(title: String, content: [SubCategory]) {
        subCategoryList = content
        
        super.init(nibName: nil, bundle: nil)
        
        self.title = title
        
        let view = self.view as! ContentView
        view.tableView.register(ContentTableViewCell.self, forCellReuseIdentifier: "ContentTableViewCell")
        view.tableView.dataSource = self
        view.tableView.delegate = self
    }
    
    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ContentViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subCategoryList.count
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        guard let cell = cell as? ContentTableViewCell else { return }
        
        cell.setCollectionViewDataSourceDelegate(dataSourceDelegate: self, forRow: indexPath.section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ContentTableViewCell = tableView.dequeueReusableCell(withIdentifier: "ContentTableViewCell", for: indexPath) as! ContentTableViewCell
        cell.titleLabel.text = subCategoryList[indexPath.row].nameCategory
        
        cell.setCollectionViewDataSourceDelegate(dataSourceDelegate: self, forRow: indexPath.row)
        return cell
    }
}

extension ContentViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(kContentTableViewheight)
        
    }
}

extension ContentViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return subCategoryList[collectionView.tag].bookList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: ContentCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ContentCollectionViewCell", for: indexPath) as! ContentCollectionViewCell
        
        getImage(url: subCategoryList[collectionView.tag].bookList[indexPath.row].imgUrl) { image in
            DispatchQueue.main.async {
                cell.imageView.image = image
            }
        }
        return cell
    }
    
    private func getImage(url: String, completion: @escaping (UIImage?) -> Void) {
        
        DispatchQueue.global().async {
            let url = URL(string: url)
            do {
                let data = try Data(contentsOf: url!)
                completion(UIImage(data: data))
            } catch let err {
                print("Error: \(err.localizedDescription)")
                completion(nil)
            }
        }
    }
}

extension ContentViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let bookDetailsController = BookDetailsViewController(book: subCategoryList[collectionView.tag].bookList[indexPath.item])
        navigationController?.pushViewController(bookDetailsController, animated: true)
    }
}

extension ContentViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 70, height: kContentTableViewheight - 30)
    }
}
