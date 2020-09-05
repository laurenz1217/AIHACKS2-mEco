//
//  Games+Videos_DataSource.swift
//  MissionSTEM
//
//  Created by Aditi on 29/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import Foundation
import UIKit

enum enGameURLs: CaseIterable {
    
    case game1
    case game2
    case game3
    case game4
    case game5
    case game6
    case game7
    case game8
    case game9
    case game10
    case game11
    case game12
    case game13
    case game14

    
    var title: String {
        
        switch self {
            
        case .game1:
            return "Science Kids"
        case .game2:
            return "Ask Dr Universe"
        case .game3:
            return "Kids do Ecology"
        case .game4:
            return "Earth Kids by NASA"
        case .game5:
            return "National Geographic Kids"
        case .game6:
            return "Calculation Nation"
        case .game7:
            return "Sparticl"
        case .game8:
            return "Exploratorium"
        case .game9:
            return "Math Blaster"
        case .game10:
            return "MS Chicago"
        case .game11:
            return "Tynker"
        case .game12:
            return "Funology"
        case .game13:
            return "Billnye"
        case .game14:
            return "BrainPOP"
        
        }
    }
    
    var image: UIImage? {
        
        switch self {
            
        case .game1:
            return UIImage (named: "url_1")
        case .game2:
            return UIImage (named: "url_2")
        case .game3:
            return UIImage (named: "url_3")
        case .game4:
            return UIImage (named: "url_4")
        case .game5:
            return UIImage (named: "url_5")
        case .game6:
            return UIImage (named: "url_6")
        case .game7:
            return UIImage (named: "url_7")
        case .game8:
            return UIImage (named: "url_8")
        case .game9:
            return UIImage (named: "url_9")
        case .game10:
            return UIImage (named: "url_10")
        case .game11:
            return UIImage (named: "url_11")
        case .game12:
            return UIImage (named: "url_12")
        case .game13:
            return UIImage (named: "url_13")
        case .game14:
            return UIImage (named: "url_14")
        
        }
    }
    
    var strURL: String {
        
        switch self {
            
        case .game1:
            return "https://www.sciencekids.co.nz/gamesactivities.html"
        case .game2:
            return "https://askdruniverse.wsu.edu/"
        case .game3:
            return "http://kids.nceas.ucsb.edu/"
        case .game4:
            return "https://www.nasa.gov/kidsclub/"
        case .game5:
            return "https://kids.nationalgeographic.com/"
        case .game6:
            return "http://calculationnation.nctm.org/"
        case .game7:
            return "http://www.sparticl.org/"
        case .game8:
            return "https://www.exploratorium.edu/explore"
        case .game9:
            return "http://www.mathblaster.com/parents/math-games"
        case .game10:
            return "https://www.msichicago.org/science-at-home/"
        case .game11:
            return "https://www.tynker.com/"
        case .game12:
            return "https://www.funology.com/"
        case .game13:
            return "https://billnye.com/"
        case .game14:
            return "https://www.brainpop.com/stem/"
        
        }
    }
}

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
            return "Exploratorium"
        case .video2:
            return "NOVA"
        case .video3:
            return "SciShow Kids"
        case .video4:
            return "AsapSCIENCE"
        case .video5:
            return "What is STEM?"
        case .video6:
            return "Why STEM is important?"
      
        }
    }
    
    var image: UIImage? {
        
        switch self {
            
        case .video1:
            return UIImage (named: "video_url_1")
        case .video2:
            return UIImage (named: "video_url_2")
        case .video3:
            return UIImage (named: "video_url_3")
        case .video4:
            return UIImage (named: "video_url_4")
        case .video5:
            return UIImage (named: "video_url_5")
        case .video6:
            return UIImage (named: "video_url_6")
       
        }
    }
    
    var strURL: String {
        
        switch self {
            
        case .video1:
            return "https://www.exploratorium.edu/video"
        case .video2:
            return "https://www.pbs.org/wgbh/nova/"
        case .video3:
            return "https://www.youtube.com/user/scishowkids"
        case .video4:
            return "https://www.youtube.com/channel/UCC552Sd-3nyi_tk2BudLUzA"
        case .video5:
            return "https://www.youtube.com/watch?v=wRV28EOCGGo"
        case .video6:
            return "https://www.youtube.com/watch?v=fH5iLx_jCUk"
     
        }
    }
}



