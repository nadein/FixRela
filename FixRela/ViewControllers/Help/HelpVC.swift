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
    static let detailsVCID = "HelpDetailsVC"
    static let detailsStoryboard = "HelpDetails"
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
        dataSource.delegate = self
        tableView.delegate = dataSource
        tableView.dataSource = dataSource
        // reload here
    }
    
}

extension HelpVC: NavigationDelegate {
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
    
    func navigateToFallInLove() {
        let detailsVC = UIStoryboard(name: Constants.detailsStoryboard, bundle: nil).instantiateViewController(withIdentifier: Constants.detailsVCID) as! HelpDetailsVC
        detailsVC.category = .fellInLove
        navigateTo(detailsVC)
    }
    
    func navigateToInLove() {
        let detailsVC = UIStoryboard(name: Constants.detailsStoryboard, bundle: nil).instantiateViewController(withIdentifier: Constants.detailsVCID) as! HelpDetailsVC
        detailsVC.category = .inLove
        navigateTo(detailsVC)
    }
    
    func navigateToMarried() {
        let detailsVC = UIStoryboard(name: Constants.detailsStoryboard, bundle: nil).instantiateViewController(withIdentifier: Constants.detailsVCID) as! HelpDetailsVC
        detailsVC.category = .married
        navigateTo(detailsVC)
    }
    
    func navigateTo(_ viewController: HelpDetailsVC) {
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}

