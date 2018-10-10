//
//  TCell.swift
//  selectedTableView
//
//  Created by AFFIXUS IMAC1 on 8/20/18.
//  Copyright © 2018 AFFIXUS IMAC1. All rights reserved.
//

import UIKit

class TCell: UITableViewCell {

    @IBOutlet weak var lbIds: UILabel!
    @IBOutlet weak var lbNames: UILabel!
    @IBOutlet weak var imgChecked: UIImageView!
    @IBOutlet weak var imgUnchecked: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgChecked.image = #imageLiteral(resourceName: "ic_checked")
        imgChecked.isHidden = true
        imgUnchecked.image = #imageLiteral(resourceName: "ic_unchecked")
        imgUnchecked.isHidden = false
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
