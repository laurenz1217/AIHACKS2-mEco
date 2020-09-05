//
//  CoolWomenDataSource.swift
//  MissionSTEM
//
//  Created by Aditi on 29/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import Foundation
import UIKit

enum enCoolWomen: CaseIterable {
    
    case katherine
    case ada
    case marie
    
    
    var title: String {
        switch self {
            
        case .katherine:
            return "Katherine Johnson"
        case .ada:
            return "Ada Lovelace"
        case .marie:
            return "Marie Curie"
        }
    }
    
    var subtitle: String {
        switch self {
            
        case .katherine:
            return "Mathematician, Astronomer"
        case .ada:
            return "First Computer Programmer"
        case .marie:
            return "Scientist"
        }
    }
    
    var img: UIImage {
        switch self {
            
        case .katherine:
            return UIImage(named: "img_katherine")!
        case .ada:
            return UIImage(named: "img_ada")!
        case .marie:
            return UIImage(named: "img_marie")!
        }
    }
    
    var description: String {
        switch self {
            
        case .katherine:
            return "Creola Katherine Johnson was an American mathematician whose calculations of orbital mechanics as a NASA employee were critical to the success of the first and subsequent U.S. crewed spaceflights."
        case .ada:
            return "Augusta Ada King, Countess of Lovelace was an English mathematician and writer, chiefly known for her work on Charles Babbage's proposed mechanical general-purpose computer, the Analytical Engine."
        case .marie:
            return "Marie Curie is one of the most famous scientists that ever lived. Her contributions such as the discovery of Radium and other key elements help us out every day, especially when getting an x-ray."
        }
    }
}
