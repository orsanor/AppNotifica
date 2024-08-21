//
//  HomeViewModel.swift
//  AppNotifica
//
//  Created by Jonathan Orsano on 20/08/24.
//

import Foundation
import UIKit

class HomeViewModel {
    var coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func didTapAdd(){
        coordinator.presentNovaOcorrencia()
    }
}
