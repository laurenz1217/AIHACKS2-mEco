//
//  Helper+Extension.swift
//  MissionSTEM
//
//  Created by Aamir on 29/07/20.
//  Copyright © 2020 upFree. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}

extension UIView {
    
    
    func gradientLayer(with backgroundColor: enGradient) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.colors = enGradient.gradientColor(forBackground: backgroundColor)
        self.layer.insertSublayer(gradientLayer, at: 0)

    }
    
    func bordered(withCornerRadius cornerRadius: CGFloat = 15.0) {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1.0
    }
}

enum enGradient {
    case mainBackground
    case viewBackground
    
    static func gradientColor(forBackground: enGradient) -> [CGColor] {
        switch forBackground {
        case .mainBackground:
            
            //To change Gradient Color of background
            return [UIColor(red: 85/255.0, green: 192/255.0, blue: 151/255.0, alpha: 1.0).cgColor, UIColor(red: 164/255.0, green: 211/255.0, blue: 160/255.0, alpha: 1.0).cgColor]
    
            
        case .viewBackground:
            return [UIColor.white.cgColor, UIColor.lightGray.cgColor]
        }
    }
}

extension String {
    
    func underline() -> NSAttributedString {
        
        return NSAttributedString(string: self, attributes: [NSAttributedString.Key.underlineStyle : NSUnderlineStyle.single.rawValue])
    }
}
