//
//  HomeViewController.swift
//  MissionSTEM
//
//  Created by Aditi on 26/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var viewStartExpolring: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       // self.view.layer.insertSublayer(color.gl, at: 0)
        self.view.gradientLayer(with: .mainBackground)

               navigationController?.isNavigationBarHidden = true
    }
    

    override func viewWillAppear(_ animated: Bool) {
        

    }
    
    @IBAction func actionStartExplore(_ sender: UIButton) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "ExploreViewController") as! ExploreViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}




