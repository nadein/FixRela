//
//  SocialPostCell.swift
//  FixRela
//
//  Created by Alex Nadein on 12/8/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

class SocialPostCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak private var iconView: UIImageView!
    @IBOutlet weak private var postImageView: UIImageView!
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var postTextLabel: UILabel!
    
    // MARK: - UITableViewCell
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
