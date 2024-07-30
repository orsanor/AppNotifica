//
//  labelDefault.swift
//  AppNotifica
//
//  Created by Jonathan Orsano on 30/07/24.
//

import Foundation
import UIKit

class labelDefault: UILabel {
    
    init(text: String){
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault (text: String){
        self.text = text
        self.textColor = .textLabelColor
        self.textAlignment = .center
        self.font = UIFont(name: "SProDisplay-Light", size: 16)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
