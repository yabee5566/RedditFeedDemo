//
//  RegularTableCell.swift
//  RedditFeedDemo
//
//  Created by Ian Pan on 2020/2/10.
//  Copyright © 2020 Ian Pan. All rights reserved.
//

import UIKit

class RegularTableCell: UITableViewCell {
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var titleView: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
