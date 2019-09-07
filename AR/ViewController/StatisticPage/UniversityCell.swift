//
//  UniversityCell.swift
//  AR
//
//  Created by yinzixie on 7/9/19.
//  Copyright © 2019 yinzixie. All rights reserved.
//

import UIKit

class UniversityCell: UITableViewCell {

    @IBOutlet weak var back: UIView!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var content: UITextView!
    @IBOutlet weak var image0: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        back.backgroundColor = UIColor.white
         back.layer.cornerRadius = 3.0
         back.layer.masksToBounds = false
         back.layer.shadowColor = UIColor.black.withAlphaComponent(0.2).cgColor
         back.layer.shadowOffset = CGSize(width: 0, height: 0)
         back.layer.shadowOpacity = 0.8
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }

}
