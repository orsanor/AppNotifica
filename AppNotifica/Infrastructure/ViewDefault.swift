//
//  ViewDefault.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 16/08/24.
//

import Foundation
import UIKit

class ViewDefault: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackgroundColor
        setupVisualElements()
    }
    
    func setupVisualElements(){
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
