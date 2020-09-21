//
//  TribeCouponsCell.swift
//  goTribe
//
//  Created by Akhil Jain on 17/09/20.
//  Copyright © 2020 Akhil Jain. All rights reserved.
//

import UIKit

class TribeCouponsCell: UITableViewCell {

    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var claimLabel: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
