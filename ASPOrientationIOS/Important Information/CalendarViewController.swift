//
//  CalendarViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class CalendarViewController: ASPViewController {
    
    lazy var webViewController: ASPWebViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ASPWebViewController") as! ASPWebViewController
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTitle(title: "ASP Calendar")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonPressedCalendar(_ sender: Any) {
        webViewController.urlString = "https://sites.google.com/a/asparis.fr/navcom/calus?pli=1"
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
