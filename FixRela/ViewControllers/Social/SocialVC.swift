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
    static let buttonTitle = "new_post_button_title".localized
    
    static let newPostVCID = "NewPostViewController"
    static let newPostStoryboard = "NewPost"
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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    //MARK: - Private methods
    private func viewsSetup() {
        navigationItem.title = Constants.navigationTitle
        
        let rightBarButton = UIBarButtonItem(title: Constants.buttonTitle, style: .done, target: self, action: #selector(self.newPost))
        //rightBarButton.tintColor = Constants.greenColor
        self.navigationItem.rightBarButtonItem = rightBarButton
    }
    
    private func tableViewSetup() {
        tableView.register(SocialPostCell.self)
        dataSource.delegate = self
        tableView.delegate = dataSource
        tableView.dataSource = dataSource
        // reload here
    }
    
    @objc private func newPost() {
        let newPostVC = UIStoryboard(name: Constants.newPostStoryboard, bundle: nil).instantiateViewController(withIdentifier: Constants.newPostVCID) as! NewPostViewController
        navigationController?.pushViewController(newPostVC, animated: true)
    }

}

extension SocialVC: NavigationDelegate {
    func navigateToDetails(_ indexPath: IndexPath) {
        
        let vc = UIStoryboard(name: "PostDetails", bundle: nil).instantiateViewController(withIdentifier: "PostDetailsVC") as! PostDetailsVC
        vc.post = PostsManager.shared.posts[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }

}


