//
//  CoCurricularViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class CoCurricularViewController: ASPViewController {
    
    lazy var webViewController: ASPWebViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ASPWebViewController") as! ASPWebViewController
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTitle(title: "ASP Co-Curricular Activities")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonPressedLS(_ sender: Any) {
        webViewController.urlString = "https://www.asparis.org/student-life/curricular/lower-school"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    @IBAction func onButtonPressedMS(_ sender: Any) {
        webViewController.urlString = "https://www.asparis.org/student-life/curricular/middle-school"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    @IBAction func onButtonPressedUS(_ sender: Any) {
        webViewController.urlString = "https://www.asparis.org/student-life/curricular/upper-school"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    @IBAction func onButtonPressedPortal(_ sender: Any) {
        webViewController.urlString = "https://www.asparis.org/parent-portal/activities/clubs"
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
