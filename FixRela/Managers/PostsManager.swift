//
//  PostsManager.swift
//  FixRela
//
//  Created by Alex Nadein on 12/9/18.
//  Copyright © 2018 Alex Nadein. All rights reserved.
//

import UIKit

private struct Posts {
    static let post1 = Post(uid: "222", author: "Alex", title: "Any Advice", body: "Help me to choose a b-day present for my GF!")
    static let post2 = Post(uid: "333", author: "Alex", title: "Thank you all", body: "I like to show my gratitude to the community.")
    static let post3 = Post(uid: "444", author: "Betty", title: "Hey, guys!", body: "How to impress my crush?")
    static let post4 = Post(uid: "555", author: "Lil CJ", title: "Just boasting", body: "Yo! Guess who got a date!?")
    static let post5 = Post(uid: "666", author: "V. Kapur", title: ":(", body: "I'm upset with my relationship. Need support.")
}

class PostsManager: NSObject {
    
    static let shared = PostsManager()
    
    public var posts: [Post] = [Posts.post1, Posts.post2, Posts.post3, Posts.post4, Posts.post5]
    
    public func createPost(_ post: Post) {
        self.posts.append(post)
    }

}
