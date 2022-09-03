//
//  FindViewController.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/24.
//

import Parchment
import UIKit

final class FindViewController: UIViewController {
    
    override func loadView() {
        view = FindView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        setNavigation()
        setTabNavigation()
    }
    
    private func setNavigation() {
        navigationItem.title = "Find"
        let searchButtonItem = UIBarButtonItem(title: "🔎", style: .done, target: self, action: #selector(buttonPressed(_:)))
        navigationItem.rightBarButtonItem = searchButtonItem
    }
    
    private func setButton() {
        let view = self.view as! FindView
        view.button.addTarget(self, action: #selector(buttonPressed(_:)), for: UIControl.Event.touchUpInside)
        view.bringSubviewToFront(view.button)
    }
    
    private func setTabNavigation() {
        
        BookApiModel().fetchAll(completion: { (bookAll) in
            
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
    private func buttonPressed(_ sender: UIBarButtonItem) {
        print("search button touched.")
    }
}
