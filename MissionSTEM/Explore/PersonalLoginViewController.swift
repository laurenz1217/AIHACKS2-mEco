//
//  PersonalLoginViewController.swift
//  MissionSTEM
//
//  Created by Lauren Zaidel on 9/5/20.
//  Copyright © 2020 upFree. All rights reserved.
//
import Foundation
import UIKit

@IBDesignable
class DesignableView: UIView {
    @IBInspectable var shadowColor: UIColor = UIColor.clear {
        didSet {
            layer.shadowColor = shadowColor.cgColor
        }
    }

    @IBInspectable var shadowRadius: CGFloat = 0 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }

    @IBInspectable var shadowOpacity: CGFloat = 0 {
        didSet {
            layer.shadowOpacity = Float(shadowOpacity)
        }
    }

    @IBInspectable var shadowOffsetY: CGFloat = 0 {
        didSet {
            layer.shadowOffset.height = shadowOffsetY
        }
    }
}

class PersonalLoginViewController: UIViewController {

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
        
       
  

    @IBAction func personalcontinue(_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "PersonalBranchViewController") as! PersonalBranchViewController
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
