//
//  SecondViewController.swift
//  FixRela
//
//  Created by Alex Nadein on 12/7/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

private struct Constants {
    static let navigationTitle = "social_screen_nav_title".localized
}

class SocialVC: UIViewController {
    
    //MARK: - Properties
    private let dataSource = SocialDataSource()
    
    //MARK: - Outlets
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
        tableView.register(SocialPostCell.self)
        tableView.delegate = dataSource
        tableView.dataSource = dataSource
        // reload here
    }

}

