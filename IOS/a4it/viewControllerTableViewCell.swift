//
//  viewControllerTableViewCell.swift
//  a4it
//
//  Created by user906979 on 11/9/17.
//  Copyright © 2017 ecrubit. All rights reserved.
//

import UIKit

class viewControllerTableViewCell: UITableViewCell {

    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
