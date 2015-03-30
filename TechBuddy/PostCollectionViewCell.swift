//
//  PostCollectionViewCell.swift
//  TechBuddy
//
//  Created by Stephen Lu on 3/29/15.
//  Copyright (c) 2015 LineBreak. All rights reserved.
//

import UIKit

class PostCollectionViewCell: UICollectionViewCell {
    var titleView: UITextView!
    var title: String!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.titleView = UITextView(frame: self.bounds)
        self.contentView.addSubview(self.titleView)
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
