//
//  PostCell.swift
//  myHood
//
//  Created by Vu Dang on 2/10/16.
//  Copyright © 2016 Vu Dang. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell
{

    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(post: Post)
    {
        titleLbl.text = post.title
        descLbl.text = post.postDesc
    }

}
