//
//  CoolWomenInSTEMViewController.swift
//  MissionSTEM
//
//  Created by Aditi on 27/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import UIKit

class CoolWomenInSTEMViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.gradientLayer(with: .mainBackground)
    }
    
    override func viewWillAppear(_ animated: Bool) {
            
        let story = UIStoryboard(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(withIdentifier: "SwipeIntroductionViewController") as! SwipeIntroductionViewController
        
        vc.presentedViewControllerDismissDelegate = self
        
        self.present(vc, animated: true, completion: nil)
        
    }
    
    
 @IBAction func actionBack(_ sender: UIButton) {
       self.navigationController?.popViewController(animated: true)
   }
   
   @IBAction func actionHome(_ sender: UIButton) {
       self.navigationController?.popToRootViewController(animated: true)
   }


}

extension CoolWomenInSTEMViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return enCoolWomen.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CoolWomenCollectionCellID", for: indexPath) as! CoolWomenCollectionCell
        
        cell.lblTitle.text = enCoolWomen.allCases[indexPath.row].title
        cell.lblDesc.text = enCoolWomen.allCases[indexPath.row].description
        cell.img.image =  enCoolWomen.allCases[indexPath.row].img
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}


extension CoolWomenInSTEMViewController: PresentedViewControllerDismissDelegate {
    func didTapDismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
