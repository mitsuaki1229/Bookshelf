//
//  TabBarController.swift
//  Bookshelf
//
//  Created by Mitsuaki Ihara on 2022/08/24.
//

import UIKit

class TabBarController: UITabBarController {
    
    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        setUpViewControllers()
        
        selectedIndex = 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func setUpViewControllers() {
        var viewControllers: [UIViewController] = []
        
        viewControllers.append({ () -> UINavigationController in
            let vc = HomeViewController()
            vc.tabBarItem = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "HomeItemIcon"), tag: 1)
            return UINavigationController(rootViewController: vc)
        }())
        
        viewControllers.append({ () -> UINavigationController in
            let vc = FindViewController()
            vc.tabBarItem = UITabBarItem(title: "Find", image: #imageLiteral(resourceName: "FindItemIcon"), tag: 2)
            return UINavigationController(rootViewController: vc)
        }())
        
        viewControllers.append({ () -> UINavigationController in
            let vc = LibraryViewController()
            vc.tabBarItem = UITabBarItem(title: "Library", image: #imageLiteral(resourceName: "LibraryItemIcon"), tag: 3)
            return UINavigationController(rootViewController: vc)
        }())
        
        self.viewControllers = viewControllers
    }
}
