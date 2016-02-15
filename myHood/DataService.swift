//
//  DataService.swift
//  myHood
//
//  Created by Vu Dang on 2/12/16.
//  Copyright © 2016 Vu Dang. All rights reserved.
//

import Foundation
import UIKit

class DataService
{
    static var instance = DataService()
    
    
    let KEY_POSTS = "posts"
    private var _loadedPosts = [Post]()
    
    var loadedPosts: [Post]
    {
        return _loadedPosts
    }
    
    func savePosts()
    {
        let postsData = NSKeyedArchiver.archivedDataWithRootObject(_loadedPosts)
        NSUserDefaults.standardUserDefaults().setObject(postsData, forKey: KEY_POSTS)
    }
    
    func loadPosts()
    {
        if let postsData = NSUserDefaults.standardUserDefaults().objectForKey(KEY_POSTS) as? NSData
            {
                if let postsArray = NSKeyedUnarchiver.unarchiveObjectWithData(postsData) as? [Post]
                    {
                        _loadedPosts = postsArray;
                    }
            }
        
        NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "postsLoaded", object: nil))
    }
    
    func saveImageAndCreatePath(image: UIImage) -> String
    {
        let imgData = UIImagePNGRepresentation(image)
        let imgPath = "image\(NSDate.timeIntervalSinceReferenceDate()).png"
        let fullPath = documentsPathForFileName(imgPath)
        imgData?.writeToFile(fullPath, atomically: true)
        return imgPath
    }
    
    func imageForPath(path: String)
    {
        
    }
    
    func addPost(post: Post)
    {
        _loadedPosts.append(post)
        savePosts()
        loadPosts()
    }
    
    func documentsPathForFileName(name: String) -> String
    {
        let paths = NSSearchPathForDirectoriesInDomains(.DocumentationDirectory, .UserDomainMask, true)
        let fullPath = paths[0] as NSString
        return fullPath.stringByAppendingPathComponent(name)
        
    }
}
