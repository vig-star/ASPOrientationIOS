//
//  GradeBondingViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class GradeBondingViewController: ASPViewController {
    
    @IBOutlet weak var gpTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gpTextView.isScrollEnabled = false
        self.setupTitle(title: "Grade Bonding Programs")
        
        let line1 = "\n\nLower School \n"
        let line2 = "Once school starts, children spend time getting to know each other, and teachers are especially attentive and sensitive to the adjustment process of those who have newly arrived.\n\n\n"
        
        let line3 = "Middle School \n"
        let line4 = "Each grade travels for a multi-day program organized by the school and the Outward Bound program. These trips create an amazing first impression and connection for students. The goal is for students to develop a sense of trust, friendship, cooperation, and good spirit. The experience builds a foundation for cooperative learning that will carry on throughout the year.\n\n\n"
        
        let line5 = "Upper School \n"
        let line6 = "Students will experience a range of programs at the start of the year to help them discover the school, learn more about its expectations, meet classmates, and form new friendships.\n\n\n"
        
        
        //Here we can modify the attributes continue ... i will watch sounds good
        let regularAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.white]
        let largeAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor.yellow]
        
        
        let line1String = NSMutableAttributedString(string: line1, attributes: largeAttributes)
        let line2String = NSAttributedString(string: line2, attributes: regularAttributes)
        
        let line3String = NSAttributedString(string: line3, attributes: largeAttributes)
        
        let line4String = NSAttributedString(string: line4, attributes: regularAttributes)
        
        let line5String = NSAttributedString(string: line5, attributes: largeAttributes)
        let line6String = NSAttributedString(string: line6, attributes: regularAttributes)
        
        line1String.append(line2String)
        line1String.append(line3String)
        line1String.append(line4String)
        line1String.append(line5String)
        line1String.append(line6String)
        
        gpTextView.attributedText = line1String
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        gpTextView.isScrollEnabled = true
    }
    


}
