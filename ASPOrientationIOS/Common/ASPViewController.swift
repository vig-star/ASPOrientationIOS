//
//  ASPViewController.swift
//  ASPOrientationIOS
//
//  Created by Nevil Lad on 17/07/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit
import SideMenu

class ASPViewController: UIViewController {

    var leftMenuNavigationController: UISideMenuNavigationController!
    var navTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSideMenu()
    }
    
    public func setupTitle(title: String) {
        self.title = title
    }
    
    private func setupSideMenu() {
        // Define the menus
        let navigationBar = navigationController!.navigationBar
        navigationBar.tintColor = UIColor.blue
        let leftButton =  UIBarButtonItem(image: UIImage(named: "menu"), style: UIBarButtonItem.Style.plain, target: self, action: #selector(onMenuPressed))
        navigationItem.leftBarButtonItem = leftButton
        
        leftMenuNavigationController = (storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? UISideMenuNavigationController)!
        
        SideMenuManager.default.addPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.addScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        self.title = navTitle
    }

    
    @objc func onMenuPressed() {
        present(leftMenuNavigationController, animated: true, completion: nil)
    }
  

}
