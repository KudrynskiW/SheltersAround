//
//  SettingsScreenController.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 22/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation
import UIKit

class SettingsScreenController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var changePasswordButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var tabBar: NavigationTabBar!
    
    let viewTitle: String = "SETTINGS"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = viewTitle
        tableView.delegate = self
        
        tabBar.delegate = self
        tabBar.setupTabBar()
        tabBar.selectedItem = tabBar.items?.last
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "HomeScreen") {
            print("Open Home Screen")
        } else if(segue.identifier == "CatalogScreen") {
            print("Open Catalog Screen")
        }
    }
}

extension SettingsScreenController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell(style: .default, reuseIdentifier: nil)
    }
    
    
}

extension SettingsScreenController: UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
            switch item.tag {
            case 0:
                performSegue(withIdentifier: "HomeScreen", sender: self)
                break
            case 1:
                performSegue(withIdentifier: "CatalogScreen", sender: self)
                break
            default:
                break
            }
        }
    }
}
