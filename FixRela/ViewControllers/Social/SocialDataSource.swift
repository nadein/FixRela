//
//  SocialDataSource.swift
//  FixRela
//
//  Created by Alex Nadein on 12/8/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

private struct Constants {
    static let numberOfSocialCategories: Int = 5
}

class SocialDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {

    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Constants.numberOfSocialCategories
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
