//
//  CoCurricularViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class CoCurricularViewController: ASPViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonPressedLS(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.asparis.org/student-life/curricular/lower-school")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedMS(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.asparis.org/student-life/curricular/middle-school")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedUS(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.asparis.org/student-life/curricular/upper-school")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func onButtonPressedPortal(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.asparis.org/parentportal/cocurriculars")! as URL, options: [:], completionHandler: nil)
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
