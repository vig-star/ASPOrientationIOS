//
//  ResourcesViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class ResourcesViewController: ASPViewController {

    @IBOutlet weak var introtextView: UITextView!
    @IBOutlet weak var pstextview: UITextView!
    @IBOutlet weak var htextview: UITextView!
    @IBOutlet weak var sdtextview: UITextView!
    @IBOutlet weak var libtextview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTitle(title: "ASP Online Resources")
        
        introtextView.isSelectable = true
        introtextView.isEditable = false
        introtextView.dataDetectorTypes = .link
        
        //Keeps the original formatting from xib or storyboard
        introtextView.text = "The @ASP@ has a wealth of resources about our programs and community. The @Parent@ is your point of entry."
        introtextView.attributedText = introtextView.attributedText?
            .replace(placeholder: "@ASP@", with: "ASP Website", url: "https://www.asparis.org/")
            .replace(placeholder: "@Parent@", with: "Parent Portal", url: "https://www.asparis.org/parentportal/home")
        
        
        pstextview.isSelectable = true
        pstextview.isEditable = false
        pstextview.dataDetectorTypes = .link
        
        //Keeps the original formatting from xib or storyboard
        pstextview.text = "PowerSchool is ASP's student data base. Student schedules, attendance data, grades, and report cards are available here. Click @h@ to access the PowerSchool Parent Portal"
        pstextview.attributedText = pstextview.attributedText?
            .replace(placeholder: "@h@", with: "here", url: "https://powerschool.asparis.fr/public/home.html")
        
        
        htextview.isSelectable = true
        htextview.isEditable = false
        htextview.dataDetectorTypes = .link
        
        //Keeps the original formatting from xib or storyboard
        htextview.text = "Haiku/PowerSchool Learning is the school’s online learning portal. Middle and Upper School teachers use Haiku to extend the classroom environment. For the ASP student, Haiku provides access to a variety of resources and information related to classes, clubs and other activities. Click @h@ to access the Haiku Portal."
        htextview.attributedText = htextview.attributedText?
            .replace(placeholder: "@h@", with: "here", url: "https://asparis.learning.powerschool.com/do/account/login")
        
        
        sdtextview.isSelectable = true
        sdtextview.isEditable = false
        sdtextview.dataDetectorTypes = .link
        
        //Keeps the original formatting from xib or storyboard
        sdtextview.text = "Click @h@ for the School Directory, which contains the contact information of all administration and staff, PFA members, and ASP families."
        sdtextview.attributedText = sdtextview.attributedText?
            .replace(placeholder: "@h@", with: "here", url: "https://resources.finalsite.net/images/v1543583491/asp/thl1v5gyhagwmtbcf8oq/WholeDirectory2018-2019.pdf")
        
        
        libtextview.isSelectable = true
        libtextview.isEditable = false
        libtextview.dataDetectorTypes = .link
        
        //Keeps the original formatting from xib or storyboard
        libtextview.text = "ASP is home to two libraries: La Bibliothèque (Early Childhood-Grade 7) and @S@ (Grades 8-12), the latter of which provides access to summer reading, online databases, learning resources, and research information."
        libtextview.attributedText = libtextview.attributedText?
            .replace(placeholder: "@S@", with: "Sawiris Family Library", url: "http://libraries.asparis.fr/thehub")
        
        UITextView.appearance().linkTextAttributes = [ .foregroundColor: UIColor.red ]
        
        
        // Do any additional setup after loading the view.
    }
    
   
    
    
    @IBAction func onButtonPressedPS(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://powerschool.asparis.fr/public/home.html")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedHaiku(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://asparis.learning.powerschool.com/do/account/login")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedDirectory(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://resources.finalsite.net/images/v1543583491/asp/thl1v5gyhagwmtbcf8oq/WholeDirectory2018-2019.pdf")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedLibraries(_ sender: Any) {
        UIApplication.shared.open(URL(string: "http://libraries.asparis.fr/thehub")! as URL, options: [:], completionHandler: nil)
    }
    
    

}

extension NSAttributedString {
    func replace(placeholder: String, with hyperlink: String, url: String) -> NSAttributedString {
        let mutableAttr = NSMutableAttributedString(attributedString: self)
        
        let hyperlinkAttr = NSAttributedString(string: hyperlink, attributes: [NSAttributedString.Key.link: URL(string: url)!])
        
        let placeholderRange = (self.string as NSString).range(of: placeholder)
        
        mutableAttr.replaceCharacters(in: placeholderRange, with: hyperlinkAttr)
        return mutableAttr
    }
}
