//
//  LanguageCell.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 22/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import UIKit

class LanguageCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var languagePicker: UIPickerView!
    
    let languagesPossible = ["English", "Polish", "German"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.text = "LANGUAGE"
        languagePicker.dataSource = self
        languagePicker.delegate = self
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func setLanguage(_ sender: Any) {
        print(languagesPossible[languagePicker.selectedRow(inComponent: 0)])
    }
    
}

extension LanguageCell: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        languagesPossible.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return languagesPossible[row]
    }
    
}
