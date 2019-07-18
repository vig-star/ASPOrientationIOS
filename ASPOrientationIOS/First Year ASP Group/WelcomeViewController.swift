//
//  WelcomeViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class WelcomeViewController: ASPViewController {
    
    lazy var webViewController: ASPWebViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ASPWebViewController") as! ASPWebViewController
        return viewController
    }()
    
    @IBOutlet  weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.isScrollEnabled = false
        self.setupTitle(title: "ASP Welcome Program")
        // Do any additional setup after loading the view.
        
        let line1 = "\n\nOrientation Day \n"
        let line2 = "August 26 / 9:00 am - 1:00 pm \n\n"
        let line3 = "Your year starts with Orientation where you will be welcomed by the Parent Faculty Association, visit campus, get your bus routes and ID cards, complete outstanding admissions materials, and meet your division's academic director, teachers, and other ASP families.\n\n\n"
        
        let line4 = "Back-to-School Picnic \n"
        let line5 = "August 26 / 9:00 am - 1:00 pm \n\n"
        let line6 = "This all-community picnic is sponsored by ASP and the PFA and will be a day filled with food, fun, music, and games. Sports teams, clubs, and PFA liaisons will be on hand to greet you and introduce themselves. It will be a chance for the entire family to meet new friends and a great way to start off the new school year!\n\n\n"
        
        let line7 = "Living Skills Seminars \n"
        let line8 = "August 26 / 9:00 am - 1:00 pm \n\n"
        let line9 = "Presented over two days, Living Skills provides a special orientation to living in the Paris area and useful information related to school life, including discussions on ASP programs, security and health services, presentations on the the French medical system and transportation, and answers to your food-related questions.\n\n\n"
        
        let line10 = "Community Connections Fair \n"
        let line11 = "August 26 / 9:00 am - 1:00 pm \n\n"
        let line12 = "Visit the Community Connections Fair and meet a variety of local English-speaking vendors and service providers. Participants typically include representatives from clubs, service institutions, language and cooking schools, banks, and more."
        
        
        //Here we can modify the attributes continue ... i will watch sounds good
        let samllAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 11), NSAttributedString.Key.foregroundColor: UIColor.yellow]
        let regularAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.white]
        let largeAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor.yellow]
        
        
        let line1String = NSMutableAttributedString(string: line1, attributes: largeAttributes)
        let line2String = NSAttributedString(string: line2, attributes: samllAttributes)
        let line3String = NSAttributedString(string: line3, attributes: regularAttributes)
        
        let line4String = NSAttributedString(string: line4, attributes: largeAttributes)
        let line5String = NSAttributedString(string: line5, attributes: samllAttributes)
        let line6String = NSAttributedString(string: line6, attributes: regularAttributes)
        
        let line7String = NSAttributedString(string: line7, attributes: largeAttributes)
        let line8String = NSAttributedString(string: line8, attributes: samllAttributes)
        let line9String = NSAttributedString(string: line9, attributes: regularAttributes)
        
        let line10String = NSAttributedString(string: line10, attributes: largeAttributes)
        let line11String = NSAttributedString(string: line11, attributes: samllAttributes)
        let line12String = NSAttributedString(string: line12, attributes: regularAttributes)
        
        line1String.append(line2String)
        line1String.append(line3String)
        line1String.append(line4String)
        line1String.append(line5String)
        line1String.append(line6String)
        line1String.append(line7String)
        line1String.append(line8String)
        line1String.append(line9String)
        line1String.append(line10String)
        line1String.append(line11String)
        line1String.append(line12String)
        
        textView.attributedText = line1String
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewDidAppear(_ animated: Bool) {
        textView.isScrollEnabled = true
    }

}
