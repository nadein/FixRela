//
//  HelpContentVC.swift
//  FixRela
//
//  Created by Alex Nadein on 12/8/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

class HelpContentVC: UIViewController {

    // MARK: - Properties
    public var article: Article = Article(title: "", text: "", image: UIImage())
    
    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    // MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = article.title
        textView.text = article.text
        imageView.image = article.image
    }

}
