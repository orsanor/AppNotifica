//
//  TabBarCoordinator.swift
//  AppNotifica
//
//  Created by Jonathan Orsano on 19/08/24.
//

import Foundation
import UIKit

class TabBarCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let tabBarController = TabBarController()
        
        
        let homeViewCoordinator = HomeCoordinator(navigationController: self.navigationController)
        
        let novaOcorrenciaViewCoordinator = NovaOcorrenciaCoordinator(navigationController: self.navigationController)

        let sobreCoordinator = SobreCoordinator(navigationController: self.navigationController)

        tabBarController.setViewControllers([homeViewCoordinator.homeViewController, novaOcorrenciaViewCoordinator.novaOcorrenciaViewController, sobreCoordinator.sobreViewController], animated: true)
        self.navigationController.pushViewController(tabBarController, animated: true)
    }
}

