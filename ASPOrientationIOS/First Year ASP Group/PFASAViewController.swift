//
//  PFASAViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/8/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class PFASAViewController: UIViewController {

    @IBOutlet weak var pTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pTextView.isScrollEnabled = false
        self.navigationController?.isNavigationBarHidden = false
        let line1 = "\n\nPFA Welcome Coffee \n"
        let line11 = "September 3 | 9:00 am - 10:30 am\n\n"
        let line2 = "Being an ASP parent earns you automatic membership in the PFA! Please join us to meet the 2019–20 PFA team and other parents. We will get to know each other and briefly explore the opportunities for involvement at school.\n\n\n"
        
        
        let line3 = "Parent Coffees \n"
        let line4 = "The PFA, in collaboration with the school divisions, organizes grade-level parent coffees. These gatherings are a chance to meet fellow parents and to discuss topics of interest for each respective grade. School administrators and faculty offer informative presentations with opportunities for questions and discussion.\n\n\n"
        
        let line5 = "Sports Boosters \n"
        let line6 = "Sports Boosters bring a lot of spirit to ASP as they support the school’s Athletics program through their presence and enthusiasm, by running the food concessions at home games, and through the sales of spirit wear.\n\n\n"
        
        let line7 = "Senior Class Parents \n\n"
        let line8 = "Senior year is a memorable time for the soon-to-be graduates and their parents! The Senior Parents Committee helps plan special activities every year to support the efforts of our hard-working senior students and to celebrate this memorable year. They also coordinate graduation announcements, senior photos, monthly treats, senior t-shirts, an award luncheon, and more.\n\n\n"
        
        let line9 = "School Portraits \n"
        let line12 = "Lower School: September 25, 2019\nMiddle School: October 8 and 9, 2019\nGrades 9-11: October 8 and 9, 2019 \nGrade 12: October 2, 2019\nRetakes and New Students: January 28, 2020\n\n"
        let line10 = "Each fall, parent volunteers coordinate with a professional photographer to take school portraits of all students. Parents will have the opportunity to purchase their students' photo packets.\n\n\n"
        
        
        //Here we can modify the attributes continue ... i will watch sounds good
         let smallAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 11), NSAttributedString.Key.foregroundColor: UIColor(hex: "#003d71")]
        let regularAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor(hex: "#003d71")]
        let largeAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "#003d71")]
        
        
        let line1String = NSMutableAttributedString(string: line1, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line11String = NSAttributedString(string: line11, attributes: smallAttributes as [NSAttributedString.Key : Any])
        let line2String = NSAttributedString(string: line2, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line3String = NSAttributedString(string: line3, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line4String = NSAttributedString(string: line4, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line5String = NSAttributedString(string: line5, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line6String = NSAttributedString(string: line6, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line7String = NSAttributedString(string: line7, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line8String = NSAttributedString(string: line8, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line9String = NSAttributedString(string: line9, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line12String = NSAttributedString(string: line12, attributes: smallAttributes as [NSAttributedString.Key : Any])
        let line10String = NSAttributedString(string: line10, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        line1String.append(line11String)
        line1String.append(line2String)
        line1String.append(line9String)
        line1String.append(line12String)
        line1String.append(line10String)
        line1String.append(line3String)
        line1String.append(line4String)
        line1String.append(line5String)
        line1String.append(line6String)
        line1String.append(line7String)
        line1String.append(line8String)
        
        
        pTextView.attributedText = line1String

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        pTextView.isScrollEnabled = true
    }
    
    @IBAction func onBackPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "BackASPSegue", sender: self)
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
