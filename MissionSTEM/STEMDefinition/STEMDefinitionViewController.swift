//
//  STEMDefinitionViewController.swift
//  MissionSTEM
//
//  Created by Aditi on 27/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import UIKit

class STEMDefinitionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.gradientLayer(with: .mainBackground)
    }
    
    @IBAction func actionBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionHome(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}



class STEMDefinitionTableCell: UITableViewCell {
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblSubTitle: UILabel!
    
    override func awakeFromNib() {
        
    }
}



