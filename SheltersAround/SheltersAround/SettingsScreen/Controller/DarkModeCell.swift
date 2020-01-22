//
//  DarkModeCell.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 22/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import UIKit

class DarkModeCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var modeSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.text = "DARK MODE"
        
        if(self.traitCollection.userInterfaceStyle == .dark) {
            modeSwitch.isOn = true
        } else {
            modeSwitch.isOn = false
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func switchedSwitch(_ sender: Any) {
        switch modeSwitch.isOn {
        case true:
            UIApplication.shared.windows.forEach { window in
                window.overrideUserInterfaceStyle = .dark
            }
            break
        case false:
            UIApplication.shared.windows.forEach { window in
                window.overrideUserInterfaceStyle = .light
            }
            break
        }
    }
    
}

