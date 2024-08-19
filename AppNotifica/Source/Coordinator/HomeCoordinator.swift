//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 12/08/24.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    lazy var homeViewController: HomeViewController = {
        let viewController = HomeViewController()
        
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(systemName: "homekit")
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
    
//    func presentNovaOcorrencia(){
//        let viewModel = NovaOcorrenciaView(coordinator: self)
//        let viewController = NovaOcorrenciaViewController(coder: viewModel)
//        let navigationNovaOcorrencia = UINavigationController(rootViewController: viewController)
//        navigationController.present(navigationNovaOcorrencia, animated: true)
//    }
}

