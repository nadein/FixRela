//
//  PostDetailsVC.swift
//  FixRela
//
//  Created by Alex Nadein on 12/9/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

class PostDetailsVC: UIViewController {
    
    @IBOutlet weak var iconImg: UIImageView!
    @IBOutlet weak var postImg: UIImageView!
    
    @IBOutlet weak var bodyLabel: UITextView!
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    public var post: Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bodyLabel.text = post?.body
        topicLabel.text = post?.title
        authorLabel.text = post?.author
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
