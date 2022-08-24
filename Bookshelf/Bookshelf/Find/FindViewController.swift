//
//  FindViewController.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/24.
//

import UIKit

var searchButtonItem: UIBarButtonItem?

class FindViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        
        setNavigation()
        setButton()
        
        // TODO tab
        // TODO UISCrollView
        // TODO UICollectionView
        
    }
    
    func setNavigation() {
        navigationItem.title = "Find"
        searchButtonItem = UIBarButtonItem(title: "🔎", style: .done, target: self, action: #selector(buttonPressed(_:)))
        navigationItem.rightBarButtonItem = searchButtonItem
    }
    
    func setButton() {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.addTarget(self, action: #selector(buttonPressed(_:)), for: UIControl.Event.touchUpInside)
        button.tintColor = .white
        button.backgroundColor = UIColor.red
        button.layer.cornerRadius = 25
        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        view.addSubview(button)
        
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        button.widthAnchor.constraint(equalToConstant: 45).isActive = true
    }

    @objc
    func buttonPressed(_ sender: UIBarButtonItem) {
      print("search button touched.")
    }
}
