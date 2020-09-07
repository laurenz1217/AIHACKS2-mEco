//
//  VideosViewController.swift
//  MissionSTEM
//
//  Created by Aditi on 27/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import UIKit

class VideosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.gradientLayer(with: .mainBackground)
    }
    
    @objc func didSelectURL(_ sender: UIButton) {
        
        
        
    }
    
    
    
    @IBAction func actionBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionHome(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}

class VideoCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func layoutSubviews() {
    super.layoutSubviews()
    
    }
    
    
   // override func awakeFromNib() {
        
       
        
        
   }



extension VideosViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideoCollectionCellID", for: indexPath) as! VideoCollectionCell
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 8
        cell.layer.borderWidth = 0
        cell.backgroundColor = UIColor(red: 210/255.0, green: 255/255.0, blue: 247/255.0, alpha: 1.0)
        cell.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.15).cgColor
        cell.layer.shadowOpacity = 1
        cell.layer.shadowOffset = CGSize(width: 0, height: 5)
        cell.layer.shadowRadius = 10
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.layer.cornerRadius).cgPath
        cell.img.clipsToBounds = true
        cell.img.layer.cornerRadius = 8
        cell.img.image = enVideoURLs.allCases[indexPath.row].image
        cell.lbl.text = enVideoURLs.allCases[indexPath.row].title
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let url = URL(string: enVideoURLs.allCases[indexPath.row].strURL) {
                     if UIApplication.shared.canOpenURL(url) {
                         UIApplication.shared.open(url, options: [:], completionHandler: nil)
                     }
                 }
    }
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return enVideoURLs.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width/2 - 30 , height : 180)
    }
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
      if UI_USER_INTERFACE_IDIOM() == .pad {
          return UIEdgeInsets(top: 20, left: 60, bottom: 20, right: 60)
      }
      return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
}

