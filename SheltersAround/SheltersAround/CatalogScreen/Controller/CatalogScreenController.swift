//
//  CatalogScreenController.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 29/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//


import UIKit

class CatalogScreenController: UIViewController {
    @IBOutlet weak var welcomeTextLabel: UILabel!
    @IBOutlet weak var catalogSearchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var bottomTabBar: NavigationTabBar!
    
    let titleText = "Catalog Screen"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = titleText
        
        tableView.delegate = self
        tableView.dataSource = self
        bottomTabBar.delegate = self
        
        self.welcomeTextLabel.text = """
        Welcome in Shelters Catalog
        you can browse already registered shelters
        or use search bar below.
        """
        
        tableView.register(UINib(nibName: "InstitutionCell", bundle: nil), forCellReuseIdentifier: "InstitutionCell")
        
        bottomTabBar.setupTabBar()
        bottomTabBar.selectedItem = bottomTabBar.items?[1]
    }

    

}

extension CatalogScreenController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dummyContact = Contact(nil, ["123123123"], "example@mail.com")
        let dummyAddress = Address("TestStreen", "1", "TestCity", "00-000", "Poland")
        let dummyInstitution = Institution(nil,
                                           "Test Institution",
                                           "TOZ",
                                           "Dummy institution description, where i can check how text is wrapping by default. Holly molly i need more text, maybe this time?",
                                           dummyAddress,
                                           dummyContact)
        let cell = tableView.dequeueReusableCell(withIdentifier: "InstitutionCell") as! InstitutionCell
        cell.configureCell(with: dummyInstitution)
        
        return cell
    }
    
    
}

extension CatalogScreenController: UITabBarDelegate {
    
}
