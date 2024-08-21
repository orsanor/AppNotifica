//
//  TabBarCoordinator.swift
//  AppNotifica
//
//  Created by Jonathan Orsano on 19/08/24.
//

import Foundation
import UIKit

class TabbarCoordinator : Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    func start() {
        //inicializa o TabbarController
        let tabbarController = TabBarController()
        tabbarController.modalPresentationStyle = .overFullScreen
        //inicializar as views da tabbar homeViewCoordinator
        let homeNavigation = UINavigationController()
        let homeViewCoordinator = HomeCoordinator(navigationController: homeNavigation)
        homeViewCoordinator.start()
        
    
        let sobreNavigation = UINavigationController()
        let sobreViewCoordinator = SobreCoordinator(navigationController: sobreNavigation)
        sobreViewCoordinator.start()
        
        let navigationControllers = [homeNavigation, sobreNavigation]
        //passa uma lista de view que serão mostradas na tabbar
        tabbarController.setViewControllers(navigationControllers, animated: true)
        
        self.navigationController.present(tabbarController, animated: true)
    }
}
