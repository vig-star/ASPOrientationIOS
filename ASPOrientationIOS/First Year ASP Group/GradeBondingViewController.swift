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
        self.setupTitle(title: "Important Contact Information")
        
        let line1 = "\n\nAdmissions Office \n"
        let line2 = "admissions@asparis.fr\n\n\n"
        
        let line3 = "Nurse \n"
        let line4 = "nurse@asparis.fr\n\n\n"

        let line5 = "Absences \n"
        let line6 = "Lower School: Camille Burel\nEmail: lsoffice@asparis.fr\n\nMiddle School: Patricia Connor\nEmail: msoffice@asparis.fr\n\nUpper School: Cathy McLaury\nEmail: usoffice@asparis.fr\n\n\n"
        
        let line7 = "Directors \n"
        let line8 = "Lower School: Daniel Kerr\nEmail: dkerr@asparis.fr\n\nMiddle School: Carleen Helaili\nEmail: chelaili@asparis.fr\n\nUpper School: Aaron Hubbard\nEmail: ahubbard@asparis.fr\n\n\n"
        
        let line9 = "Counselors \n"
        let line10 = "Lower School: Justine du Plessis\nEmail: jduplessis@asparis.fr\n\nMiddle School: Anthony Suzzi-Valli\nEmail: asuzzivalli@asparis.fr\n\nUpper School 1: Sandy Karam\nEmail: skaram@asparis.fr\n\nUpper School 2: Justin Kearns\nEmail: jkearns@asparis.fr\n\n\n"
        
        let line11 = "College Counselors \n"
        let line12 = "Jill Lauck\nEmail: jlauck@asparis.fr\n\nMary Jean Lowe\nEmail: mjlowe@asparis.fr\n\n\n"
        
        let line13 = "Test Center Adminstrator/Substitute Coordinator \n"
        let line14 = "Iva Vezina\nEmail: ivezina@asparis.fr\n\n\n"
        
        let line15 = "Librarians\n"
        let line16 = "Lower School/Middle School: Margaret Montarras\nEmail: mseaver@asparis.fr\n\nLower School/Middle School: Gregory Jacks\nEmail: gjacks@asparis.fr\n\nUpper School: Mario Chioini\nEmail: mchioini@asparis.fr\n\n\n"
        
        let line17 = "Athletics Department \n"
        let line18 = "Director: John Kim\nEmail: jkim@asparis.fr\n\nSecretary: Naida Simota\nEmail: nsimota@asparis.fr\n\n\n"
        
        let line19 = "Parent Faculty Association President\n"
        let line20 = "Lisa Young Hallenbeck\nEmail: pfapres@asparis.fr\n\n\n"
        
        let line21 = "Bus\n"
        let line22 = "Solange della Faille\nEmail: sfaille@asparis.fr\n\n\n"
        
        let line23 = "Head of School\n"
        let line24 = "Jane Thompson\nEmail: jthompson@asparis.fr\n\n\n"
        //Here we can modify the attributes continue ... i will watch sounds good
        let regularAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor(hex: "#003d71")]
        let largeAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "#003d71")]
        
        
        let line1String = NSMutableAttributedString(string: line1, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line2String = NSAttributedString(string: line2, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line3String = NSAttributedString(string: line3, attributes: largeAttributes as [NSAttributedString.Key : Any])

        let line4String = NSAttributedString(string: line4, attributes: regularAttributes as [NSAttributedString.Key : Any])

        let line5String = NSAttributedString(string: line5, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line6String = NSAttributedString(string: line6, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line7String = NSAttributedString(string: line7, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line8String = NSAttributedString(string: line8, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line9String = NSAttributedString(string: line9, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line10String = NSAttributedString(string: line10, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line11String = NSAttributedString(string: line11, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line12String = NSAttributedString(string: line12, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line13String = NSAttributedString(string: line13, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line14String = NSAttributedString(string: line14, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line15String = NSAttributedString(string: line15, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line16String = NSAttributedString(string: line16, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line17String = NSAttributedString(string: line17, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line18String = NSAttributedString(string: line18, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line19String = NSAttributedString(string: line19, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line20String = NSAttributedString(string: line20, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line21String = NSAttributedString(string: line21, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line22String = NSAttributedString(string: line22, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line23String = NSAttributedString(string: line23, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line24String = NSAttributedString(string: line24, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
       
        line1String.append(line2String)
        line1String.append(line3String)
        line1String.append(line4String)
        line1String.append(line5String)
        line1String.append(line6String)
        line1String.append(line21String)
        line1String.append(line22String)
        line1String.append(line23String)
        line1String.append(line24String)
        line1String.append(line7String)
        line1String.append(line8String)
        line1String.append(line9String)
        line1String.append(line10String)
        line1String.append(line11String)
        line1String.append(line12String)
        line1String.append(line13String)
        line1String.append(line14String)
        line1String.append(line15String)
        line1String.append(line16String)
        line1String.append(line17String)
        line1String.append(line18String)
        line1String.append(line19String)
        line1String.append(line20String)
        
        
        gpTextView.attributedText = line1String
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        gpTextView.isScrollEnabled = true
    }
    


}

