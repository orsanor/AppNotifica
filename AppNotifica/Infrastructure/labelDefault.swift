//
//  labelDefault.swift
//  AppNotifica
//
//  Created by Jonathan Orsano on 30/07/24.
//

import Foundation
import UIKit

class labelDefault: UILabel {
    
    init(text: String, font: UIFont){
        super.init(frame: .zero)
        initDefault(text: text, font: font)
        
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault (text: String, font: UIFont){
        self.text = text
        self.textColor = .textLabelColor
        self.font = font
        self.adjustsFontSizeToFitWidth = true
        self.numberOfLines = 0
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
