//
//  FirstViewController.swift
//  FixRela
//
//  Created by Alex Nadein on 12/7/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

private struct Constants {
    static let navigationTitle = "help_screen_nav_title".localized
}

class HelpVC: UIViewController {
    
    //MARK: - Properties
    private let dataSource = HelpDataSource()

    //MARK: - Properties
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetup()
        viewsSetup()
    }
    
    //MARK: - Private methods
    private func viewsSetup() {
        navigationItem.title = Constants.navigationTitle
    }
    
    private func tableViewSetup() {
        tableView.register(HelpTopicCell.self)
        tableView.delegate = dataSource
        tableView.dataSource = dataSource
        // reload here
    }
    
}

