//
//  TabBarViewController.swift
//  AppNotifica
//
//  Created by Jonathan Orsano on 19/08/24.
//

import Foundation
import UIKit

class TabBarController: UITabBarController{
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)
        self.tabBar.tintColor = .buttonBackgroundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackgroundColor
    }
}
