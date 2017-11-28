//
//  CustomTableViewCell.swift
//  FireMsn
//
//  Created by practica on 27/11/17.
//  Copyright © 2017 practica. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var senderLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
