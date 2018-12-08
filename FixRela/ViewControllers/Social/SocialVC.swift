//
//  SecondViewController.swift
//  FixRela
//
//  Created by Alex Nadein on 12/7/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

class SocialVC: UIViewController {
    
    //MARK: - Properties
    private let dataSource = HelpDataSource()
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetup()
    }
    
    //MARK: - Private methods
    private func tableViewSetup() {
        tableView.delegate = dataSource
        tableView.dataSource = dataSource
        // reload here
    }

}

