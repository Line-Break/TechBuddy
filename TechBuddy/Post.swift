//
//  Post.swift
//  TechBuddy
//
//  Created by Stephen Lu on 3/29/15.
//  Copyright (c) 2015 LineBreak. All rights reserved.
//

import Foundation
import UIKit

class Post: NSObject {
    var title: String!
    var image: UIImage?
    var date: NSDate!
    
    init(title: String, date: NSDate) {
        self.title = title
        self.date = date
    }
    
    func setImage(image: UIImage) {
        // TODO format the image
        self.image = image
    }
}
