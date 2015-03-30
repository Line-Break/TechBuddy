//
//  MainFeedViewController.swift
//  TechBuddy
//
//  Created by Stephen Lu on 3/29/15.
//  Copyright (c) 2015 LineBreak. All rights reserved.
//

import UIKit

class MainFeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var postsTableView: UITableView!
    
    var posts: [Post]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var post = Post(title: "Help me with this problem!", date: NSDate())
        self.posts = [post]
        self.postsTableView.dataSource = self
        self.postsTableView.delegate = self
        self.postsTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "PostCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("PostCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel!.text = self.posts[0].title
        return cell
    }
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]? {
        return [UITableViewRowAction()]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
