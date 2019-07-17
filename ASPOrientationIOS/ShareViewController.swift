//
//  ShareViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class ShareViewController: ASPViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonPressedInsta(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.instagram.com/americanschoolofparisofficial/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedFB(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.facebook.com/AmericanSchoolOfParis")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedTwitter(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://twitter.com/asparisofficial")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedVimeo(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://vimeo.com/americanschoolofparis/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedLinkedin(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.linkedin.com/company/american-school-of-paris")! as URL, options: [:], completionHandler: nil)
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
