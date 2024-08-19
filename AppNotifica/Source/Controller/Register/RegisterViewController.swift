//
//  RegisterController.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 31/07/24.
//

import Foundation
import UIKit

class RegisterViewController: ViewControllerDefault {
    var onLoginTap: (() -> Void)?
    
    lazy var registerView: RegisterView = {
        let registerView = RegisterView()
        
        
        registerView.onLoginTap = { [weak self] in
            if let self = self {
                self.onLoginTap?()
            }
        }
        
        
        return registerView
    }()
    
    override func loadView() {
        self.view = registerView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
    }
}
