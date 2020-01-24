//
//  InstitutionCell.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 24/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import UIKit

class InstitutionCell: UITableViewCell {
    
    @IBOutlet weak var institutionLogo: UIImageView!
    @IBOutlet weak var institutionForm: UILabel!
    @IBOutlet weak var institutionName: UILabel!
    @IBOutlet weak var institutionDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(with institution: Institution) {
        self.institutionLogo.image = institution.logo
        self.institutionForm.text = institution.form
        self.institutionName.text = institution.name
        self.institutionDescription.text = institution.description
    }

}
