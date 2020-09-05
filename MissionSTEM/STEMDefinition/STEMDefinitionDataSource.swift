//
//  STEMDefinitionDataSource.swift
//  MissionSTEM
//
//  Created by Aditi on 29/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import Foundation
import UIKit

enum STEMDefinitionData: CaseIterable {
    
    
    case science
    case technology
    case engineering
    case math
    
    
    static var numberOfRow: Int {
        return STEMDefinitionData.allCases.count
    }
    
    var title: NSMutableAttributedString {
        
        var firstCapital: String!
        var restText: String!
        
        var attributedString: NSMutableAttributedString!
        
        switch self {
            
        case .science:
             firstCapital = "S"
             restText = "cience"
            
            attributedString = NSMutableAttributedString(string: firstCapital, attributes: [NSAttributedString.Key.foregroundColor :UIColor(red: 109/255.0, green: 104/255.0, blue: 117/255.0, alpha: 1.0),NSAttributedString.Key.font : UIFont(name: "Roboto-bold", size: 40.0)!])
            
            
        case .technology:
             firstCapital = "T"
             restText = "echnology"
            
            attributedString = NSMutableAttributedString(string: firstCapital, attributes: [NSAttributedString.Key.foregroundColor :UIColor(red: 181/255.0, green: 131/255.0, blue: 141/255.0, alpha: 1.0),NSAttributedString.Key.font : UIFont(name: "Roboto-bold", size: 40.0)!])
            
            
        case .engineering:
             firstCapital = "E"
             restText = "ngineering"
            
            attributedString = NSMutableAttributedString(string: firstCapital, attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 157/255.0, green: 129/255.0, blue: 137/255.0, alpha: 1.0),NSAttributedString.Key.font : UIFont(name: "Roboto-bold", size: 40.0)!])
            
            
        case .math:
             firstCapital = "M"
             restText = "ath"
            
             attributedString = NSMutableAttributedString(string: firstCapital, attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 109/255.0, green: 104/255.0, blue: 117/255.0, alpha: 1.0),NSAttributedString.Key.font : UIFont(name: "Roboto-bold", size: 40.0)!])
            
            
        }
        
        let restAttributedString = NSMutableAttributedString(string: restText, attributes: [NSAttributedString.Key.foregroundColor : UIColor(red: 66/255.0, green: 66/255.0, blue: 66/255.0, alpha: 1.0),NSAttributedString.Key.font  : UIFont(name: "Roboto-Regular", size: 26.0)!])
        
        attributedString.append(restAttributedString)
        
        return attributedString
    }
    
    var subtitle: String {
        switch self {
            
        case .science:
            return "A way of thinking"
        case .technology:
            return "A way of doing"
        case .engineering:
            return "A way of doing"
        case .math:
            return "A way of measuring"
        }
    }

}
