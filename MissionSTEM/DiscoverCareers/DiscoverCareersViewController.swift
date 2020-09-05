//
//  DiscoverCareersViewController.swift
//  MissionSTEM
//
//  Created by Aditi on 27/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import UIKit

class DiscoverCareersViewController: UIViewController {

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

extension DiscoverCareersViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return enCareersData.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CareersTableCellID") as! CareersTableCell
        cell.lblTitle.text = enCareersData.allCases[indexPath.row].title
        cell.img.image = enCareersData.allCases[indexPath.row].img
        cell.viewContent.backgroundColor = enCareersData.backgroundColor[indexPath.row % enCareersData.backgroundColor.count]

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = story.instantiateViewController(withIdentifier: "CareerDetailViewController") as! CareerDetailViewController
        vc.careerDetail = enCareersData.allCases[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)

    }
}
