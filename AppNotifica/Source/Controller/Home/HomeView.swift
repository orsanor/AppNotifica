//
//  HomeView.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 12/08/24.
//


import Foundation
import UIKit

class HomeView: ViewDefault {
    
    var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel){
        self.viewModel = viewModel
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setupVisualElements() {
    }
}
