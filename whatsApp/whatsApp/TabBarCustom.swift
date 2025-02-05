//
//  TabBarCustom.swift
//  whatsApp
//
//  Created by Maram Al shahrani on 26/03/1443 AH.
//

import UIKit

class TabBarCustom: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.barTintColor = .green
        tabBar.tintColor = .systemBlue
        tabBar.unselectedItemTintColor = .systemGray
        
        

        viewControllers = [
            barItem(tabBarTitle: "Chat", tabBarImage: UIImage(systemName: "message.fill")!, viewController: ChatScreen()),
            barItem(tabBarTitle: "Profile", tabBarImage: UIImage(systemName: "paperclip")!, viewController: SettingsScreen()),
        ]
    }
    
    private func barItem(tabBarTitle: String, tabBarImage: UIImage, viewController: UIViewController) -> UINavigationController {
        let navCont = UINavigationController(rootViewController: viewController)
        navCont.tabBarItem.title = tabBarTitle
        navCont.tabBarItem.image = tabBarImage
        return navCont
    }

}
