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
        
        let line1 = "PFA Welcome Coffee \n"
        let line2 = "Please join us to meet this year's PFA team. We will get to know each other and briefly explore the opportunities for involvement in the school.\n\n\n"
        
        let line3 = "Parent Coffees \n"
        let line4 = "These gatherings are a chance to meet fellow parents and to discuss topics of interest for each respective grade. School administrators and faculty offer informative presentations with opportunities for questions and discussions.\n\n\n"
        
        let line5 = "Sports Boosters \n"
        let line6 = "Sports Boosters bring a lot of spirit to ASP as they support the school’s Athletics program through their presence and enthusiasm, by running the food concessions at home games, and through the creation and sale of Rebels spirit wear.\n\n\n"
        
        let line7 = "Senior Class Parents \n"
        let line8 = "The Senior Parents Committee helps plan special activities every year to support the efforts of our hard-working senior students and to celebrate this memorable year. The group raises funds via champagne sales and coordinates graduation announcements, senior photos, monthly treats, senior t-shirts, an award luncheon, and more."
        
        
        //Here we can modify the attributes continue ... i will watch sounds good
        let regularAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.white]
        let largeAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor.yellow]
        
        
        let line1String = NSMutableAttributedString(string: line1, attributes: largeAttributes)
        let line2String = NSAttributedString(string: line2, attributes: regularAttributes)
        
        let line3String = NSAttributedString(string: line3, attributes: largeAttributes)
        let line4String = NSAttributedString(string: line4, attributes: regularAttributes)
        
        let line5String = NSAttributedString(string: line5, attributes: largeAttributes)
        let line6String = NSAttributedString(string: line6, attributes: regularAttributes)
        
        let line7String = NSAttributedString(string: line7, attributes: largeAttributes)
        let line8String = NSAttributedString(string: line8, attributes: regularAttributes)
        
        line1String.append(line2String)
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
