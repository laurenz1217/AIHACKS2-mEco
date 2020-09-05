//
//  ExploreViewController.swift
//  MissionSTEM
//
//  Created by Aditi on 27/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController {
    
    @IBOutlet weak var viewGames: UIView!
    @IBOutlet weak var lblGames: UILabel!
    
    
    @IBOutlet weak var viewVideos: UIView!
    @IBOutlet weak var lblVideos: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.gradientLayer(with: .mainBackground)
        viewGames.bordered()
        viewVideos.bordered()
        
            
        lblGames.text = "Games"
        lblVideos.text = "Videos"
        
        
    }
    
    
    @IBAction func actionBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func actionHome(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }

    @IBAction func actionGames(_ sender: UIButton) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = story.instantiateViewController(withIdentifier: "GamesViewController") as! GamesViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func actionVideos(_ sender: UIButton) {
        
        let story = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = story.instantiateViewController(withIdentifier: "VideosViewController") as! VideosViewController
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    @objc func didSelect(sender: UIButton) {
        
        
        let story = UIStoryboard(name: "Main", bundle: nil)

        switch enExploreData.allCases[sender.tag] {
            
        case .whatIsSteam:
            
            let vc = story.instantiateViewController(withIdentifier: "STEMDefinitionViewController") as! STEMDefinitionViewController
            self.navigationController?.pushViewController(vc, animated: true)

        case .ExploreCareers:
            let vc = story.instantiateViewController(withIdentifier: "DiscoverCareersViewController") as! DiscoverCareersViewController
            self.navigationController?.pushViewController(vc, animated: true)

        case .CoolWomenInSTEEM:
                        let vc = story.instantiateViewController(withIdentifier: "CoolWomenInSTEMViewController") as!  CoolWomenInSTEMViewController
            self.navigationController?.pushViewController(vc, animated: true)

        }
    }
}


extension ExploreViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return enExploreData.numberOfRows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExploreTableCellID") as! ExploreTableCell
        cell.lbl.text = enExploreData.allCases[indexPath.row].titleForRow
        cell.viewContent.backgroundColor = enExploreData.allCases[indexPath.row].backgroundColor
        cell.btn.tag = indexPath.row
        cell.btn.addTarget(self, action: #selector(didSelect), for: .touchUpInside)
        return cell
    }
}

class ExploreTableCell: UITableViewCell {
    
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    override func awakeFromNib() {
        viewContent.bordered()
    }
}



