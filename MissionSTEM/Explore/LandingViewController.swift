//
//  LandingViewController.swift
//  MissionSTEM
//
//  Created by Lauren Zaidel on 9/5/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import Foundation
import UIKit

class LandingViewController: UIViewController {

  override func viewDidLoad() {
        super.viewDidLoad()

        self.view.gradientLayer(with: .mainBackground)
    }
    
      
      
      
      @IBAction func actionBack(_ sender: UIButton) {
            self.navigationController?.popViewController(animated: true)
        }
        
      @IBAction func actionHome(_ sender: UIButton) {
            self.navigationController?.popToRootViewController(animated: true)
        }
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


