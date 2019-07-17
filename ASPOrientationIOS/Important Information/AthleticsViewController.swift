//
//  AthleticsViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class AthleticsViewController: ASPViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    @IBAction func onButtonPressedAthletics(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.asparis.org/athletics/lower-school-sports-and-activities")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedMiddle(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.asparis.org/athletics/ms-sports-and-activities")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func onButtonPressedUpper(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.asparis.org/athletics/upper-school-sports-and-activities")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedPortal(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.asparis.org/parentportal/athletics")! as URL, options: [:], completionHandler: nil)
    }
    @IBAction func onButtonPressedInsta(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.instagram.com/athleticsaspofficial/")! as URL, options: [:], completionHandler: nil)
    }
    
    
}


