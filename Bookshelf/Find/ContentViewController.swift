//
//  ContentViewController.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/25.
//

import UIKit

final class ContentViewController: UIViewController {
    
    var subCategoryList: [SubCategory]

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

        let tableView = UITableView(frame: .zero)
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.register(ContentTableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
        tableView.delegate = self

        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ContentViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subCategoryList.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ContentTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ContentTableViewCell
        cell.textLabel?.text = subCategoryList[indexPath.row].nameCategory
        return cell
    }
}

extension ContentViewController: UITableViewDelegate {}
