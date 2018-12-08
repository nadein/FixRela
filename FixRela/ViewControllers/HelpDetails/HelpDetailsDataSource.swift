//
//  HelpDetailsDataSource.swift
//  FixRela
//
//  Created by Alex Nadein on 12/8/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

private struct Constants {
    static let defaultNumberOfItems = 6
    static let reducedNumberOfItems = 5
    
    static let fellTitle1 = "fell_title_1".localized
    static let fellTitle2 = "fell_title_2".localized
    static let fellTitle3 = "fell_title_3".localized
    static let fellTitle4 = "fell_title_4".localized
    static let fellTitle5 = "fell_title_5".localized
    static let fellTitle6 = "fell_title_6".localized
    
    static let inloveTitle1 = "inlove_title_1".localized
    static let inloveTitle2 = "inlove_title_2".localized
    static let inloveTitle3 = "inlove_title_3".localized
    static let inloveTitle4 = "inlove_title_4".localized
    static let inloveTitle5 = "inlove_title_5".localized
    static let inloveTitle6 = "inlove_title_6".localized
    
    static let marriedTitle1 = "married_title_1".localized
    static let marriedTitle2 = "married_title_2".localized
    static let marriedTitle3 = "married_title_3".localized
    static let marriedTitle4 = "married_title_4".localized
    static let marriedTitle5 = "married_title_5".localized
}

class HelpDetailsDataSource: NSObject, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Properties
    public var category: DetailsCategory = .fellInLove
    public weak var delegate: NavigationDelegate?
    
    // MARK: - UITableViewDelegate
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return Constants.rowHeight
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.setSelected(false, animated: false)
        self.delegate?.navigateToDetails(indexPath)
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch category {
        case .fellInLove:
            return Constants.defaultNumberOfItems
        case .inLove:
            return Constants.defaultNumberOfItems
        case .married:
            return Constants.reducedNumberOfItems
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(HelpDetailsCell.self, for: indexPath) as HelpDetailsCell
        
        var title = ""
        switch category {
        case .fellInLove:
            title = titleForFell(indexPath)
        case .inLove:
            title = titleForInLove(indexPath)
        case .married:
            title = titleForMarried(indexPath)
        }
        
        cell.setupWithTitle(title)
        return cell
    }
    
    func titleForFell(_ indexPath: IndexPath) -> String {
        switch indexPath.row {
        case 0:
            return Constants.fellTitle1
        case 1:
            return Constants.fellTitle2
        case 2:
            return Constants.fellTitle3
        case 3:
            return Constants.fellTitle4
        case 4:
            return Constants.fellTitle5
        case 5:
            return Constants.fellTitle6
        default:
            return ""
        }
    }
    
    func titleForInLove(_ indexPath: IndexPath) -> String {
        switch indexPath.row {
        case 0:
            return Constants.inloveTitle1
        case 1:
            return Constants.inloveTitle2
        case 2:
            return Constants.inloveTitle3
        case 3:
            return Constants.inloveTitle4
        case 4:
            return Constants.inloveTitle5
        case 5:
            return Constants.inloveTitle6
        default:
            return ""
        }
    }
    
    func titleForMarried(_ indexPath: IndexPath) -> String {
        switch indexPath.row {
        case 0:
            return Constants.marriedTitle1
        case 1:
            return Constants.marriedTitle2
        case 2:
            return Constants.marriedTitle3
        case 3:
            return Constants.marriedTitle4
        case 4:
            return Constants.marriedTitle5
        default:
            return ""
        }
    }
    

}
