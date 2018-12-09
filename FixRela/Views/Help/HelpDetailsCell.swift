//
//  HelpDetailsCell.swift
//  FixRela
//
//  Created by Alex Nadein on 12/8/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

class HelpDetailsCell: UITableViewCell, Reusable, InterfaceBuilderPrototypable {

    // MARK: - Outlet
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var iconView: UIImageView!
    
    // MARK: - HelpDetailsCell
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    // MARK: - Public methods
    public func setupWithTitle(_ title: String, icon: UIImage?) {
        titleLabel.text = title
        iconView.image = icon
    }
}
