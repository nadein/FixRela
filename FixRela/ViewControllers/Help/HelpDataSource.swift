//
//  HelpDataSource.swift
//  FixRela
//
//  Created by Alex Nadein on 12/8/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

private struct Constants {
    static let rowHeight: CGFloat = 60
    static let numberOfHelpCategories: Int = 4
    static let titles = ["help_topic_first".localized,
                         "help_topic_second".localized,
                         "help_topic_third".localized,
                         "help_topic_fourth".localized,
                         "help_topic_fifth".localized]
}

class HelpDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    // MARK: - Properties
    public weak var delegate: NavigationDelegate?
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Constants.numberOfHelpCategories
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(HelpTopicCell.self, for: indexPath) as HelpTopicCell
        let title = Constants.titles[indexPath.row]
        cell.setupWithTitle(title)
        cell.selectionStyle = .none
        return cell
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.rowHeight
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.setSelected(false, animated: false)
        self.delegate?.navigateToDetails(indexPath)
    }

}
