//
//  CareeersTableCell.swift
//  MissionSTEM
//
//  Created by Aditi on 29/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import UIKit


class CareersTableCell: UITableViewCell {
    
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var viewContent: UIView!
    
    override func awakeFromNib() {
        viewContent.bordered(withCornerRadius: 10.0)
    }
}
