//
//  HelpDetailsVC.swift
//  FixRela
//
//  Created by Alex Nadein on 12/8/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

enum DetailsCategory {
    case fellInLove
    case inLove
    case married
}

class HelpDetailsVC: UIViewController {
    
    // MARK: - Properties
    public var category: DetailsCategory = .fellInLove
    public var dataSource = HelpDetailsDataSource()
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetup()
    }
    
    // MARK: - Private methods
    private func tableViewSetup() {
        tableView.register(HelpTopicCell.self)
        dataSource.delegate = self
        tableView.delegate = dataSource
        tableView.dataSource = dataSource
        // reload here
    }

}

extension HelpDetailsVC: NavigationDelegate {
    func navigateToDetails(_ indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            navigateToFallInLove()
        case 1:
            navigateToInLove()
        case 2:
            navigateToMarried()
        default:
            print("Tap")
        }
    }
}
