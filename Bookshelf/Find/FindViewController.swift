//
//  FindViewController.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/24.
//

import Parchment
import UIKit

final class FindViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        setNavigation()
        setTabNavigation()
    }
    
    func setNavigation() {
        navigationItem.title = "Find"
        let searchButtonItem = UIBarButtonItem(title: "🔎", style: .done, target: self, action: #selector(buttonPressed(_:)))
        navigationItem.rightBarButtonItem = searchButtonItem
    }
    
    func setButton() {
        let button = UIButton(type: UIButton.ButtonType.system)

        button.addTarget(self, action: #selector(buttonPressed(_:)), for: UIControl.Event.touchUpInside)
        button.tintColor = .white
        button.backgroundColor = UIColor.red
        button.layer.cornerRadius = 25
        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        view.addSubview(button)

        button.translatesAutoresizingMaskIntoConstraints = false
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        button.widthAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
    func setTabNavigation() {
        
        BookModel().fetch(completion: { (bookAll) in
            
            DispatchQueue.main.sync {
                
                var viewControllers: [UIViewController] = []

                bookAll?.topCategoryList.forEach({ topCategory in
                    viewControllers.append(ContentViewController(topCategory: topCategory))
                })

                let pagingViewController = PagingViewController(viewControllers: viewControllers)

                self.addChild(pagingViewController)
                self.view.addSubview(pagingViewController.view)
                pagingViewController.didMove(toParent: self)
                
                pagingViewController.view.translatesAutoresizingMaskIntoConstraints = false
                pagingViewController.view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
                pagingViewController.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
                pagingViewController.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
                pagingViewController.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true

                self.setButton()
            }
        })
    }
    
    @objc
    func buttonPressed(_ sender: UIBarButtonItem) {
        print("search button touched.")
    }
}
