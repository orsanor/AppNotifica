//
//  RegisterCoordinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 31/07/24.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}

