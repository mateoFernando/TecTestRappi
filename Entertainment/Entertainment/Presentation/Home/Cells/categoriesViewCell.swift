//
//  categoriesViewCell.swift
//  Entertainment
//
//  Created by Fernando y Nadia on 8/11/19.
//  Copyright © 2019 Fernando. All rights reserved.
//

import UIKit

class categoriesViewCell: UITableViewCell {
    
    @IBOutlet weak var categories: UICollectionView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
