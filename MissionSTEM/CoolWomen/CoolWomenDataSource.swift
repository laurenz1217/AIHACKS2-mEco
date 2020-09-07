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
    case sheryl
    
    
    var title: String {
        switch self {
            
        case .katherine:
            return "how do i list my business on the map?"
        case .ada:
            return "can i access both business and personal accounts?"
        case .marie:
            return "do i have to follow every sustainability tip?"
        case .sheryl:
            return "is the mEco's map feature tracking my location?"
        }
    }
    
    
    var img: UIImage {
        switch self {
            
        case .katherine:
            return UIImage(named: "24")!
        case .ada:
            return UIImage(named: "25")!
        case .marie:
            return UIImage(named: "26")!
        case .sheryl:
            return UIImage(named: "27")!
        }
    }
    
    var description: String {
        switch self {
            
        case .katherine:
            return "good question! you can register your business on our map software by inputting your name, email, and business address to create an account. we will verify your establishment and shortly after creating your account, your business will be displayed on the user-accessible map!"
        case .ada:
            return "yes :) if you're a business owner, you should create the business account first and use the same login credentials on the email and password portal for the personal account. reach out for any help or questions!"
        case .marie:
            return "you can adapt whatever is applicable to your situation and your life. however, we do recommend you uphold as many as you can, and spread the word/educate others on simple changes to make to help the environment. recommend the small businesses you see on the map to your friends!"
        case .sheryl:
            return "mEco's map only utilizes your location upon your approval. we never access your location data aside from when you are using the app, and there is a popup to confirm your consent before accessing this data! we always prioritize your privacy and safety."
        }
    }
}
