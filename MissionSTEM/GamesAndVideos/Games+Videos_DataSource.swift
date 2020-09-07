//
//  Games+Videos_DataSource.swift
//  MissionSTEM
//
//  Created by Aditi on 29/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import Foundation
import UIKit


    


enum enVideoURLs: CaseIterable {
    
    case video1
    case video2
    case video3
    case video4
    case video5
    case video6
    

    
    var title: String {
        
        switch self {
            
        case .video1:
            return "Black Entrepreneur Blue Print: Eric Thomas"
        case .video2:
            return "Redlining Black Businesses"
        case .video3:
            return "Small Business Grants for Female & BIPOC Entrepreneurs"
        case .video4:
            return "Human Impact on the Environment"
        case .video5:
            return "What is Environmental Racism?"
        case .video6:
            return "Black Women Entrepreneurs: About Her Business - Part 1"
      
        }
    }
    
    var image: UIImage? {
        
        switch self {
            
        case .video1:
            return UIImage (named: "video1")
        case .video2:
            return UIImage (named: "video2")
        case .video3:
            return UIImage (named: "video3")
        case .video4:
            return UIImage (named: "video4")
        case .video5:
            return UIImage (named: "video5")
        case .video6:
            return UIImage (named: "video6")
       
        }
    }
    
    var strURL: String {
        
        switch self {
            
        case .video1:
            return "https://www.youtube.com/watch?v=2cky-8DyPhE"
        case .video2:
            return "https://www.youtube.com/watch?v=D7jR5RxY63A"
        case .video3:
            return "https://www.youtube.com/watch?v=CcGcOxIZTTw"
        case .video4:
            return "https://www.youtube.com/watch?v=5eTCZ9L834s"
        case .video5:
            return "https://www.youtube.com/watch?v=Zt9CJdNb4Ik"
        case .video6:
            return "https://www.youtube.com/watch?v=92EXnvLKmek"
     
        }
    }
}



