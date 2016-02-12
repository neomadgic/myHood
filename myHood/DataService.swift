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
    
    private var _loadedPosts = [Post]()
    
    var loadedPosts: [Post]
    {
        return _loadedPosts
    }
    
    func savePosts()
    {
    
    }
    
    func loadPosts()
    {
        
    }
    
    func saveImageAndCreatePath(image: UIImage)
    {
        
    }
    
    func imageForPath(path: String)
    {
        
    }
    
    func addPost(post: Post)
    {
        
    }
}
