//
//  RegisterController.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 31/07/24.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController {
    
    var viewMain = RegisterView()
    
    override func loadView() {
        self.view = viewMain
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
