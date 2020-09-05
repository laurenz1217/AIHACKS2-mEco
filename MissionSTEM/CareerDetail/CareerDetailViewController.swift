//
//  CareerDetailViewController.swift
//  MissionSTEM
//
//  Created by Aditi on 28/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import UIKit

class CareerDetailViewController: UIViewController {
    
    
    var careerDetail: enCareersData!
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
    
}

extension CareerDetailViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CareerTitleDescTableCellID") as! CareerTitleDescTableCell
            
            cell.lblTitle.text = careerDetail.title
            cell.lblDesc.text = careerDetail.mainDescription
            
            return cell
            
        case 1:
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CareerDetailTableCellID") as! CareerDetailTableCell
            cell.img.image = careerDetail.typeImage
            cell.lblBoldTitle.text  = careerDetail.boldTextForType
            cell.lblDesc.attributedText = careerDetail.typeDescription(fortype: careerDetail)
            return cell
        case 2:
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CareerActivitiesTableCellID") as! CareerActivitiesTableCell
            
            cell.lblAvtivityTitle.text = careerDetail.boldActivity
            cell.lblAvtivityDesc.text = careerDetail.activityDescription
            cell.img.image = careerDetail.activityImage
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row != 0 ? 300 : 100
    }
}



