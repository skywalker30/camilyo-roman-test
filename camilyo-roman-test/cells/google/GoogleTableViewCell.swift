//
//  GoogleTableViewCell.swift
//  camilyo-roman-test
//
//  Created by Roman Sukner on 13/01/2019.
//  Copyright © 2019 Roman. All rights reserved.
//

import UIKit

class GoogleTableViewCell: UITableViewCell {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
