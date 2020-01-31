//
//  SimpleCell.swift
//  ExpandableCell
//
//  Created by Franklin Samboní on 31/01/20.
//  Copyright © 2020 Franklin Samboní. All rights reserved.
//

import UIKit

class SimpleCell: UITableViewCell {
    
    @IBOutlet weak var headerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
