//
//  ResourcesViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class ResourcesViewController: ASPViewController {
    
    @IBOutlet weak var mainTextView: UITextView!
    lazy var webViewController: ASPWebViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ASPWebViewController") as! ASPWebViewController
        return viewController
    }()

    @IBOutlet weak var introtextView: UITextView!
    @IBOutlet weak var pstextview: UITextView!
    @IBOutlet weak var htextview: UITextView!
    @IBOutlet weak var sdtextview: UITextView!
    @IBOutlet weak var libtextview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTitle(title: "ASP Online Resources")
        
        mainTextView.isSelectable = true
        mainTextView.isScrollEnabled = false
        mainTextView.isEditable = false
        mainTextView.dataDetectorTypes = .link
        
        let line0 = "\n\nThe ASP Website has a wealth of resources about our programs and community. The Parent Portal is your point of entry. \n\n\n\n"
        
        let line1 = "PowerSchool \n"
        let line2 = "PowerSchool is ASP's student data base. Student schedules, attendance data, grades, and report cards are available here. Click here to access the PowerSchool Parent Portal.\n\n\n"
        
        let line3 = "Haiku/PowerSchool Learning\n"
        let line4 = "Haiku/PowerSchool Learning is the school’s online learning portal. Middle and Upper School teachers use Haiku to extend the classroom environment. For the ASP student, Haiku provides access to a variety of resources and information related to classes, clubs and other activities. Click here to access the Haiku Portal.\n\n\n"
        
        let line5 = "Seesaw\n"
        let line6 = "Seesaw is a student-driven digital portfolio used in the Lower School to document and showcase student learning, and for teachers to communicate with parents. Click here to access the Seesaw Portal.\n\n\n"
        
        let line7 = "ASP Directory \n"
        let line8 = "Click here for the School Directory, which contains the contact information of all administration and staff, PFA members, and ASP families.\n\n\n"
        
        let line9 = "ASP Libraries \n"
        let line10 = "ASP is home to two libraries: La Bibliothèque (Early Childhood-Grade 7) and Sawiris Family Library (Grades 8-12), the latter of which provides access to summer reading, online databases, learning resources, and research information."
        
        
        //Here we can modify the attributes continue ... i will watch sounds good
        let titleParagraphStyle = NSMutableParagraphStyle()
        titleParagraphStyle.alignment = .center
        
        
        
        let introAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor(hex: "#003d71"), NSAttributedString.Key.paragraphStyle: titleParagraphStyle]
        let regularAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor(hex: "#003d71")]
        let largeAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor(hex: "#003d71")]
        
        let line0String = NSMutableAttributedString(string: line0, attributes: introAttributes as [NSAttributedString.Key : Any])
        let line1String = NSAttributedString(string: line1, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line2String = NSAttributedString(string: line2, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line3String = NSAttributedString(string: line3, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line4String = NSAttributedString(string: line4, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line5String = NSAttributedString(string: line5, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line6String = NSAttributedString(string: line6, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line7String = NSAttributedString(string: line7, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line8String = NSAttributedString(string: line8, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        let line9String = NSAttributedString(string: line9, attributes: largeAttributes as [NSAttributedString.Key : Any])
        let line10String = NSAttributedString(string: line10, attributes: regularAttributes as [NSAttributedString.Key : Any])
        
        line0String.append(line1String)
        line0String.append(line2String)
        line0String.append(line3String)
        line0String.append(line4String)
        line0String.append(line5String)
        line0String.append(line6String)
        line0String.append(line7String)
        line0String.append(line8String)
        line0String.append(line9String)
        line0String.append(line10String)

        
        mainTextView.attributedText = line0String
        let linkedText = NSMutableAttributedString(attributedString: mainTextView.attributedText)
        let link1 = linkedText.setAsLink(textToFind: "ASP Website", linkURL: "https://www.asparis.org/")
        let link2 = linkedText.setAsLink(textToFind: "Parent Portal", linkURL: "https://www.asparis.org/parentportal/home")
        let link3 = linkedText.setAsLink(textToFind: "PowerSchool Parent Portal", linkURL: "https://powerschool.asparis.fr/public/home.html")
        let link4 = linkedText.setAsLink(textToFind: "Haiku Portal", linkURL: "https://asparis.learning.powerschool.com/do/account/login")
        let link5 = linkedText.setAsLink(textToFind: "School Directory", linkURL: "https://resources.finalsite.net/images/v1543583491/asp/thl1v5gyhagwmtbcf8oq/WholeDirectory2018-2019.pdf")
        let link6 = linkedText.setAsLink(textToFind: "Sawiris Family Library", linkURL: "http://libraries.asparis.fr/thehub")
        let link7 = linkedText.setAsLink(textToFind: "Seesaw Portal", linkURL: "https://web.seesaw.me/")

        if link1 && link2 && link3 && link4 && link5 && link6 && link7{
            mainTextView.attributedText = NSAttributedString(attributedString: linkedText)
        }
        UITextView.appearance().linkTextAttributes = [ .foregroundColor: UIColor.red, .underlineStyle: NSUnderlineStyle.single.rawValue]
        /*
        line0String.replace(placeholder: "@ASP@", with: "ASP Website", url: "https://www.asparis.org/")
        line0String.replace(placeholder: "@Parent@", with: "Parent Portal", url: "https://www.asparis.org/parentportal/home")
        line0String.replace(placeholder: "@h0@", with: "here", url: "https://powerschool.asparis.fr/public/home.html")
        line0String.replace(placeholder: "@h1@", with: "here", url: "https://asparis.learning.powerschool.com/do/account/login")
        line0String.replace(placeholder: "@h2@", with: "here", url: "https://resources.finalsite.net/images/v1543583491/asp/thl1v5gyhagwmtbcf8oq/WholeDirectory2018-2019.pdf")
        line0String.replace(placeholder: "@S@", with: "Sawiris Family Library", url: "http://libraries.asparis.fr/thehub")
        */
        
        
        
        
        
        /*
        introtextView.isSelectable = true
        introtextView.isEditable = false
        introtextView.dataDetectorTypes = .link
        
        //Keeps the original formatting from xib or storyboard
        introtextView.text = "The @ASP@ has a wealth of resources about our programs and community. The @Parent@ is your point of entry."
        introtextView.attributedText = introtextView.attributedText?
            .replace(placeholder: "@ASP@", with: "ASP Website", url: "https://www.asparis.org/")
            .replace(placeholder: "@Parent@", with: "Parent Portal", url: "https://www.asparis.org/parentportal/home")
            .replace(placeholder: "@h0@", with: "here", url: "https://powerschool.asparis.fr/public/home.html")
            .replace(placeholder: "@h1@", with: "here", url: "https://asparis.learning.powerschool.com/do/account/login")
            .replace(placeholder: "@h2@", with: "here", url: "https://resources.finalsite.net/images/v1543583491/asp/thl1v5gyhagwmtbcf8oq/WholeDirectory2018-2019.pdf")
            .replace(placeholder: "@S@", with: "Sawiris Family Library", url: "http://libraries.asparis.fr/thehub")
        
        
        pstextview.isSelectable = true
        pstextview.isEditable = false
        pstextview.dataDetectorTypes = .link
        
        //Keeps the original formatting from xib or storyboard
        pstextview.text = "PowerSchool is ASP's student data base. Student schedules, attendance data, grades, and report cards are available here. Click @h@ to access the PowerSchool Parent Portal."
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
        webViewController.urlString = "https://powerschool.asparis.fr/public/home.html"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    @IBAction func onButtonPressedHaiku(_ sender: Any) {
        webViewController.urlString = "https://asparis.learning.powerschool.com/do/account/login"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    @IBAction func onButtonPressedDirectory(_ sender: Any) {
        webViewController.urlString = "https://resources.finalsite.net/images/v1543583491/asp/thl1v5gyhagwmtbcf8oq/WholeDirectory2018-2019.pdf"
        self.navigationController?.pushViewController(webViewController, animated: true)
    }
    
    @IBAction func onButtonPressedLibraries(_ sender: Any) {
        webViewController.urlString = "http://libraries.asparis.fr/thehub"
        self.navigationController?.pushViewController(webViewController, animated: true)
    }
    */
    

    }
    
    override func viewDidAppear(_ animated: Bool) {
        mainTextView.isScrollEnabled = true
    }
    
    
}
extension NSMutableAttributedString {
    public func setAsLink(textToFind:String, linkURL:String) -> Bool {
        
        let foundRange = self.mutableString.range(of: textToFind)
        if foundRange.location != NSNotFound {
            
            self.addAttribute(.link, value: linkURL, range: foundRange)
            
            return true
        }
        return false
    }
}
