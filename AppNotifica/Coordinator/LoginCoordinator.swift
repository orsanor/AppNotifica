//
//  LoginCoordinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 29/07/24.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onRegisterTap = {
            self.gotoRegister()
        }
        
        viewController.onLoginTap = {
            self.gotoLogin()
        }

    }
    
    func gotoRegister() {
        let coordinator = RegisterCoordinator(navigationController: navigationController)
        coordinator.start()
    }
    
    func gotoLogin() {
        let coordinator = TabBarCoordinator(navigationController: navigationController)
        coordinator.start()
    }

}
