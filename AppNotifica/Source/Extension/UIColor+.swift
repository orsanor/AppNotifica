//
//  UIColor+.swift
//  AppNotifica
//
//  Created by Jonathan Orsano on 30/07/24.
//

import Foundation
import UIKit

extension UIColor {
    
    static var viewBackgroundColor: UIColor {
        UIColor(named: "viewBackgroundColor") ?? .white
    }
    
    static var textLabelColor: UIColor {
        UIColor(named: "textLabelColor") ?? .lightGray
    }
    
    static var buttonBackgroundColor: UIColor {
        UIColor(named: "buttonBackgroundColor") ?? .black
    }
    
    static var textFieldBackgroundColor: UIColor {
        UIColor(named: "textFieldBackgroundColor") ?? .black
    }
    
    static var placeHolderBackgroundColor: UIColor {
        UIColor(named: "placeHolderBackgroundColor") ?? .white
    }
}
