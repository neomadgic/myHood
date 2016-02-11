//
//  AddPostVC.swift
//  myHood
//
//  Created by Vu Dang on 2/11/16.
//  Copyright © 2016 Vu Dang. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController
{

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        postImage.layer.cornerRadius = postImage.frame.size.width / 2;
        postImage.clipsToBounds = true;

    }

    @IBAction func cancelBtnPressed(sender: UIButton!)
    {
        sender.setTitle("", forState: .Normal)
    }

    @IBAction func addPicBtnPressed(sender: AnyObject)
    {
        
    }
    
    @IBAction func submitPressed(sender: AnyObject)
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
}
