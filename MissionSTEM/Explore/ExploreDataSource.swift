//
//  ExploreDataSource.swift
//  MissionSTEM
//
//  Created by Aditi on 29/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import Foundation
import UIKit


enum enExploreData: CaseIterable {
    
    case whatIsSteam
    case ExploreCareers
    case CoolWomenInSTEEM
    
    
    static var numberOfRows: Int {
        return enExploreData.allCases.count
    }
    
    var titleForRow: String {
        switch self {
        case .whatIsSteam:
            return "create a personal account"
        case .ExploreCareers:
            return "register as a business"
        case .CoolWomenInSTEEM:
            return "about mEco"
        }
    }
    
    var backgroundColor: UIColor {
        switch self {
        case .whatIsSteam:
            return UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
        case .ExploreCareers:
            return UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
        case .CoolWomenInSTEEM:
            return UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
        }
    }
}
