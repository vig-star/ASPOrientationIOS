//
//  AthleticsViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class AthleticsViewController: ASPViewController {

    lazy var webViewController: ASPWebViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ASPWebViewController") as! ASPWebViewController
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTitle(title: "ASP Athletics and Sports")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //Hi
    /*
     Its crasing bcoz we dont have onButtonPressedAthletics ibAcion inside this class ...so it could not recognized
     and its throwing this error which cause crash
     Understood?
     ?
     ?
     it not issue with link
 */
   
    @IBAction func onButtonPressedLower(_ sender: Any) {
        
        webViewController.urlString = "https://www.asparis.org/athletics/lower-school-sports-and-activities"
        self.navigationController?.pushViewController(webViewController, animated: true)
    }
    
    @IBAction func onButtonPressedMiddle(_ sender: Any) {
        webViewController.urlString = "https://www.asparis.org/athletics/ms-sports-and-activities"
        self.navigationController?.pushViewController(webViewController, animated: true)
    
    }
    @IBAction func onButtonPressedUpper(_ sender: Any) {
        webViewController.urlString = "https://www.asparis.org/athletics/upper-school-sports-and-activities"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    @IBAction func onButtonPressedPortal(_ sender: Any) {
        webViewController.urlString = "https://www.asparis.org/parent-portal/activities"
        self.navigationController?.pushViewController(webViewController, animated: true)
       
    }
    @IBAction func onButtonPressedInsta(_ sender: Any) {
        /*webViewController.urlString = "https://www.instagram.com/athleticsaspofficial/"
        self.navigationController?.pushViewController(webViewController, animated: true)*/
        UIApplication.shared.open(URL(string: "https://www.instagram.com/athleticsaspofficial/")! as URL, options: [:], completionHandler: nil)
    }
    
    
}


