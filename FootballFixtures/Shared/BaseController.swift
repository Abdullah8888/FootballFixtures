//
//  BaseController.swift
//  FootballFixtures
//
//  Created by Babatunde Jimoh on 01/09/2021.
//

import Foundation
import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStatusBarColor()
    }
    
    func setupStatusBarColor() {
        if let keyWindow = UIWindow.key {
            let statusBar = UIView(frame: keyWindow.windowScene?.statusBarManager?.statusBarFrame ?? CGRect.zero)
            //statusBar.backgroundColor = UIColor.init(red: 243/250, green: 243/250, blue: 243/250, alpha: 1)
            statusBar.backgroundColor = .lightGray.withAlphaComponent(0.3)
            keyWindow.addSubview(statusBar)
        }
    }
    
    func setuNavBarWithTitle(with title: String) {
        let leftView = UIView()
        leftView.backgroundColor = .red
        leftView.backgroundColor = .clear
        let label = UILabel()
        label.text = title
        label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        let navItem = UIBarButtonItem(customView: label)
        navigationItem.setLeftBarButton(navItem, animated: true)
        applyShadow()
    }
    
    func setuNavBarWithTitle(wiht title: String,
                             and leftArrow: String) {
        
    }
    
    func applyShadow() {
        navigationController?.navigationBar.layer.masksToBounds = false
        navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        navigationController?.navigationBar.layer.shadowOpacity = 0.8
        navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        navigationController?.navigationBar.layer.shadowRadius = 2
    }
    
    func setNavBarState(isHidden: Bool) {
        if isHidden == true {
            navigationController?.setNavigationBarHidden(false, animated: true)
            changeTabBar(hidden: false, animated: true)
        }
        else {
            navigationController?.setNavigationBarHidden(true, animated: true)
            changeTabBar(hidden: true, animated: true)
        }
    }

    func changeTabBar(hidden:Bool, animated: Bool){
        let tabBar = self.tabBarController?.tabBar
        let offset = (hidden ? UIScreen.main.bounds.size.height : UIScreen.main.bounds.size.height - (tabBar?.frame.size.height)! )
        if offset == tabBar?.frame.origin.y {return}
        print("changing origin y position")
        let duration:TimeInterval = (animated ? 0.5 : 0.0)
        UIView.animate(withDuration: duration,
                           animations: {tabBar!.frame.origin.y = offset},
                           completion:nil)
    }

}

extension UIWindow {
    static var key: UIWindow? {
        if #available(iOS 13, *) {
            return UIApplication.shared.windows.first { $0.isKeyWindow }
        } else {
            return UIApplication.shared.keyWindow
        }
    }
}
