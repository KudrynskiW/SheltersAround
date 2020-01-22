//
//  HomeScreenController.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 21/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import UIKit

class HomeScreenController: UIViewController {
    @IBOutlet weak var tabBar: NavigationTabBar!
    @IBOutlet weak var navigationBar: UINavigationItem!
    
    var viewTitle: String? = "HOME"
    lazy var searchBar = UISearchBar(frame: .zero)
    var searchToggle = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = viewTitle
        searchBar.placeholder = "Search"
        navigationBar.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(toggleSearch))

        tabBar.delegate = self
        tabBar.setupTabBar()
        tabBar.selectedItem = tabBar.items?.first
    }
    
    @objc func toggleSearch() {
        switch searchToggle {
        case false:
            navigationBar.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(toggleSearch))
            navigationBar.titleView = searchBar
            
        case true:
            navigationBar.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(toggleSearch))
            navigationBar.titleView = nil
        }
        searchToggle = !searchToggle
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "CatalogScreen") {
            print("Open Catalog Screen")
        } else if (segue.identifier == "SettingsScreen") {
            print("Open Settings Screen")
        }
    }
}

extension HomeScreenController: UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 1:
            performSegue(withIdentifier: "CatalogScreen", sender: self)
            break
        case 2:
            performSegue(withIdentifier: "SettingsScreen", sender: self)
            break
        default:
            break
        }
    }
}


