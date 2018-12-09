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
    
    let postMan = PostsManager.shared
    public weak var delegate: NavigationDelegate?

    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postMan.posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeue(SocialPostCell.self, for: indexPath) as SocialPostCell
        let post = postMan.posts[indexPath.row]
        cell.setupWithPost(post)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.setSelected(false, animated: false)
        self.delegate?.navigateToDetails(indexPath)
    }
}
