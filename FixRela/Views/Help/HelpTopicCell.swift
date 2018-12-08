//
//  HelpTopicCell.swift
//  FixRela
//
//  Created by Alex Nadein on 12/8/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

class HelpTopicCell: UITableViewCell, Reusable, InterfaceBuilderPrototypable {
// MARK: - Outlets
    @IBOutlet weak private var titleLabel: UILabel!
    
// MARK: - UITableViewCell
    override func awakeFromNib() {
        super.awakeFromNib()
        self.accessoryType = .disclosureIndicator
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - UITableViewCell
    public func setupWithTitle(_ title: String) {
        titleLabel.text = title
    }
    
}
