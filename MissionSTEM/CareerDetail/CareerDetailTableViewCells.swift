//
//  CareerDetailTableViewCells.swift
//  MissionSTEM
//
//  Created by Aditi on 29/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import Foundation
import UIKit


class CareerTitleDescTableCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    
    override func awakeFromNib() {
        
    }
}

class CareerDetailTableCell: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblBoldTitle: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    
    
    override func awakeFromNib() {
        
    }
}

class CareerActivitiesTableCell: UITableViewCell {
    
    @IBOutlet weak var lblAvtivityTitle: UILabel!
    @IBOutlet weak var lblAvtivityDesc: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        
    }
}
