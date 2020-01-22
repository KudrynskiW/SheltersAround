//
//  NavigationTabBar.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 21/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import UIKit

class NavigationTabBar: UITabBar {
    
    func setupTabBar() {
        var userItems: [UITabBarItem] = []
        
        userItems.append(UITabBarItem(title: "HOME", image: UIImage(systemName: "star.fill"), tag: 0))
        userItems.append(UITabBarItem(title: "CATALOG", image: UIImage(systemName: "folder.fill"), tag: 1))
        userItems.append(UITabBarItem(title: "SETTINGS", image: UIImage(systemName: "gear"), tag: 2))
        
        setItems(userItems, animated: true)
    }
}
