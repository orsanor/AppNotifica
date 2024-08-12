//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC14 on 12/08/24.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    lazy var homeView: HomeView = {
        let homeView = HomeView()
       
        return homeView
    }()
    
    override func loadView(){
        self.view = homeView
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.title = "Home"
        
        self.navigationController?.navigationBar.prefersLargeTitles=true
    }
}
