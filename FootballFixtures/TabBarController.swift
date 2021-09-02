//
//  TabBarController.swift
//  FootballFixtures
//
//  Created by Babatunde Jimoh on 01/09/2021.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    let selectedColor = UIColor.red
    override func viewDidLoad() {
        super.viewDidLoad()

        // Tab Bar Customisation
        tabBar.barTintColor = .white
        tabBar.tintColor = .systemTeal
        tabBar.unselectedItemTintColor = .gray
        //tabBar.isTranslucent = false

        viewControllers = [
            createTabBarItem(tabBarImage: "soccer", viewController: MatchesController()),
            createTabBarItem(tabBarImage: "soccer-field", viewController: LeaguesController()),
        ]
    }

    func createTabBarItem(tabBarImage: String, viewController: UIViewController) -> UINavigationController {
        let navCont = UINavigationController(rootViewController: viewController)
        navCont.tabBarItem.selectedImage = UIImage(named: tabBarImage)?.withRenderingMode(.alwaysOriginal)
        navCont.tabBarItem.image = UIImage(named: tabBarImage)?.withTintColor(.red)
        navCont.navigationBar.isTranslucent = false
        return navCont
    }
}

