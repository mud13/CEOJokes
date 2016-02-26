//
//  TableViewCell.swift
//  CEOJokes
//
//  Created by Mudit Mittal on 2/24/16.
//  Copyright © 2016 Mudit Mittal. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var productLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
