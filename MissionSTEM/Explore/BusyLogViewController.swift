//
//  PersonalLoginViewController.swift
//  MissionSTEM
//
//  Created by Lauren Zaidel on 9/5/20.
//  Copyright © 2020 upFree. All rights reserved.
//
import Foundation
import UIKit


class BusyLogViewController: UIViewController {

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
        
       
  

    @IBAction func busycontinue(_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "BusinessBranchViewController") as! BusinessBranchViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
        
        
        
        // Do any additional setup after loading the view.
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
