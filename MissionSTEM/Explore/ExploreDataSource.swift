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
            return "What is STEM?"
        case .ExploreCareers:
            return "Explore Careers"
        case .CoolWomenInSTEEM:
            return "Cool Women in STEM"
        }
    }
    
    var backgroundColor: UIColor {
        switch self {
        case .whatIsSteam:
            return UIColor(red: 255/255.0, green: 202/255.0, blue: 212/255.0, alpha: 1.0)
        case .ExploreCareers:
            return UIColor(red: 255/255.0, green: 229/255.0, blue: 217/255.0, alpha: 1.0)
        case .CoolWomenInSTEEM:
            return UIColor(red: 244/255.0, green: 172/255.0, blue: 183/255.0, alpha: 1.0)
        }
    }
}
