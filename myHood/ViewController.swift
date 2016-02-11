//
//  ViewController.swift
//  myHood
//
//  Created by Vu Dang on 2/8/16.
//  Copyright © 2016 Vu Dang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        let fakePost = Post(imagePath: "Hi", title: "Gross Bucket", postDesc: "This bucket is gross!")
        let fakePost2 = Post(imagePath: "nothing", title: "Whyyyy", postDesc: "this thing should not be here")
        let fakePost3 = Post(imagePath: "fake", title: "Green Grass", postDesc: "Very fertile")
        
        posts.append(fakePost)
        posts.append(fakePost2)
        posts.append(fakePost3)
        
        
        
        tableView.reloadData();
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell
            {
            cell.configureCell(post)
            return cell
            }
        else
            {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
            }
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return posts.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 90.0
    }
    
    



}

