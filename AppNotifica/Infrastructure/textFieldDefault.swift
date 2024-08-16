//
//  textFieldDefault.swift
//  AppNotifica
//
//  Created by Jonathan Orsano on 30/07/24.
//

import Foundation
import UIKit

class textfieldDefault: UITextField {
    
    init(text: String){
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault (text: String){
        self.backgroundColor = .textFieldBackgroundColor
        self.placeholder = text
        self.textColor = .placeHolderBackgroundColor
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
