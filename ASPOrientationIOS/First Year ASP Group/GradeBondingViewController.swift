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
        let line2 = "\tEmail: admissions@asparis.fr\n\n\n"
        
      
        
        let line3 = "Nurse Office \n"
        let line4 = "\tEmail: nurse@asparis.fr\n\n\n"

        let line5 = "Absences Office\n"
        let line6 = "\tLower School: Camille Burel\n\tEmail: lsoffice@asparis.fr\n\n\tMiddle School: Patricia Connor\n\tEmail: msoffice@asparis.fr\n\n\tUpper School: Cathy McLaury\n\tEmail: usoffice@asparis.fr\n\n\n"
        
        let line7 = "Directors \n"
        let line8 = "\tLower School: Daniel Kerr\n\tEmail: dkerr@asparis.fr\n\n\tMiddle School: Carleen Helaili\n\tEmail: chelaili@asparis.fr\n\n\tUpper School: Aaron Hubbard\n\tEmail: ahubbard@asparis.fr\n\n\n"
        
        let line9 = "Counselors \n"
        let line10 = "\tLower School: Justine du Plessis\n\tEmail: jduplessis@asparis.fr\n\n\tMiddle School: Anthony Suzzi-Valli\n\tEmail: asuzzivalli@asparis.fr\n\n\tUpper School: Sandy Karam/Justin Kearns\n\tEmail: skaram@asparis.fr\n\tEmail: jkearns@asparis.fr\n\n\n"
        
        let line11 = "College Counselors \n"
        let line12 = "\tJill Lauck\n\tEmail: jlauck@asparis.fr\n\n\tMary Jean Lowe\n\tEmail: mjlowe@asparis.fr\n\n\n"
        
        let line13 = "Test Center Adminstration\n"
        let line14 = "\tEmail: ivezina@asparis.fr\n\n\n"
        
        let line15 = "Librarians\n"
        let line16 = "\tLower/Middle School: Margaret M/Gregory J \n\tEmail: mseaver@asparis.fr\n\tEmail: gjacks@asparis.fr\n\n\tUpper School: Mario Chioini\n\tEmail: mchioini@asparis.fr\n\n\n"
        
        let line17 = "Athletics Department \n"
        let line18 = "\tDirector: John Kim\n\tEmail: jkim@asparis.fr\n\n\tSecretary: Naida Simota\n\tEmail: nsimota@asparis.fr\n\n\n"
        
        let line19 = "Parent Faculty Association President\n"
        let line20 = "\tPresident: Lisa Young Hallenbeck\n\tEmail: pfapres@asparis.fr\n\n\n"
        
        let line21 = "Student Transportation Office\n"
        let line22 = "\tEmail: sfaille@asparis.fr\n\n\n"
        
       
        //Here we can modify the attributes continue ... i will watch sounds good
        let regularAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "#003d71")]
        let largeAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 17), NSAttributedString.Key.foregroundColor: UIColor(hex: "#003d71")]
        
        
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
        
     
        
       
        line1String.append(line2String)
        line1String.append(line3String)
        line1String.append(line4String)
        line1String.append(line5String)
        line1String.append(line6String)
        line1String.append(line21String)
        line1String.append(line22String)
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


