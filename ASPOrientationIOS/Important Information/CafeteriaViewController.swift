//
//  CafeteriaViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class CafeteriaViewController: ASPViewController {
    
    lazy var webViewController: ASPWebViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ASPWebViewController") as! ASPWebViewController
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTitle(title: "ASP Cafeteria")
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onButtonPressedInstagram(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.instagram.com/cafeteria_asp/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedInfo(_ sender: Any) {
        webViewController.urlString = "https://www.asparis.org/student-life/cafeteria"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    @IBAction func onButtonPressedRecharge(_ sender: Any) {
        webViewController.urlString = "https://cafeteria.asparis.fr/cafeteria/restaucaisse/index.php?action=reappro&soc=10&langue=EN"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    @IBAction func onButtonPressedInstructions(_ sender: Any) {
        webViewController.urlString = "https://www.asparis.org/fs/resource-manager/view/532a7c42-8a0a-4413-b8d5-982e2e3ff96e"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
