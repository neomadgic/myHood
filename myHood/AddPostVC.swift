//
//  AddPostVC.swift
//  myHood
//
//  Created by Vu Dang on 2/11/16.
//  Copyright © 2016 Vu Dang. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{

    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var descField: UITextField!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        postImage.layer.cornerRadius = postImage.frame.size.width / 2;
        postImage.clipsToBounds = true;
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self;
        

    }

    @IBAction func cancelBtnPressed(sender: AnyObject)
    {
        dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func addPicBtnPressed(sender: UIButton!)
    {
        sender.setTitle("", forState: .Normal)
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func submitPressed(sender: AnyObject)
    {
        if let title = titleField.text, let desc = descField.text, let img = postImage.image
            {
        
            }
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?)
    {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        postImage.image = image;
    }
}
