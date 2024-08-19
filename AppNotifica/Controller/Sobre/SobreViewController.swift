//
//  SobreViewController.swift
//  AppNotifica
//
//  Created by Jonathan Orsano on 19/08/24.
//

import Foundation
import UIKit

class SobreViewController: ViewControllerDefault {
    
    
    lazy var sobreView: SobreView = {
        let sobreView = SobreView()
        
       return sobreView
    }()
    
    override func loadView() {
        self.view = sobreView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
        
    }
}

