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

private struct Constants {
    static let articleVCID = "HelpContentVC"
    static let articleStoryboard = "HelpContent"
}

class HelpDetailsVC: UIViewController {
    
    // MARK: - Properties
    public var category: DetailsCategory = .fellInLove
    public var dataSource = HelpDetailsDataSource()
    private let articleProvider = ArticleProvider()
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewSetup()
        viewsSetup()
    }
    
    // MARK: - Private methods
    private func tableViewSetup() {
        tableView.register(HelpDetailsCell.self)
        dataSource.delegate = self
        dataSource.category = self.category
        tableView.delegate = dataSource
        tableView.dataSource = dataSource
        // reload here
    }
    
    private func viewsSetup() {
        switch category {
        case .fellInLove:
            navigationItem.title = "Fell in Love"
        case .inLove:
            navigationItem.title = "In Love"
        case .married:
            navigationItem.title = "Married"
        }
    }

}

extension HelpDetailsVC: NavigationDelegate {
    func navigateToDetails(_ indexPath: IndexPath) {
        
        let articleVC = UIStoryboard(name: Constants.articleStoryboard, bundle: nil).instantiateViewController(withIdentifier: Constants.articleVCID) as! HelpContentVC
        
        let article = articleProvider.articleFor(category: self.category, indexPath: indexPath)
        articleVC.article = article
        navigateTo(articleVC)
    }
    
    func navigateTo(_ viewController: HelpContentVC) {
        navigationController?.pushViewController(viewController, animated: true)
    }
}
