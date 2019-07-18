//
//  ShareViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class ShareViewController: ASPViewController {
    
    lazy var webViewController: ASPWebViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ASPWebViewController") as! ASPWebViewController
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTitle(title: "Share")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonPressedInsta(_ sender: Any) {
        webViewController.urlString = "https://www.instagram.com/americanschoolofparisofficial/"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
        //UIApplication.shared.open(URL(string: "https://www.instagram.com/americanschoolofparisofficial/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedFB(_ sender: Any) {
        webViewController.urlString = "https://www.facebook.com/AmericanSchoolOfParis"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
        UIApplication.shared.open(URL(string: "https://www.facebook.com/AmericanSchoolOfParis")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedTwitter(_ sender: Any) {
        webViewController.urlString = "https://twitter.com/asparisofficial"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
        //UIApplication.shared.open(URL(string: "https://twitter.com/asparisofficial")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedVimeo(_ sender: Any) {
        webViewController.urlString = "https://vimeo.com/americanschoolofparis/"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
        //UIApplication.shared.open(URL(string: "https://vimeo.com/americanschoolofparis/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedLinkedin(_ sender: Any) {
        webViewController.urlString = "https://www.linkedin.com/company/american-school-of-paris"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
        //UIApplication.shared.open(URL(string: "https://www.linkedin.com/company/american-school-of-paris")! as URL, options: [:], completionHandler: nil)
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
