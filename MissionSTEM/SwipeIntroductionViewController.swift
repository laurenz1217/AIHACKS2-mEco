//
//  SwipeIntroductionViewController.swift
//  MissionSTEM
//
//  Created by Dreamotech on 07/08/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import UIKit

protocol PresentedViewControllerDismissDelegate {
    func didTapDismiss()
}

class SwipeIntroductionViewController: UIViewController {
    
    var presentedViewControllerDismissDelegate: PresentedViewControllerDismissDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func actionDismiss(_ sender: UIButton) {
        presentedViewControllerDismissDelegate.didTapDismiss()
    }

}
