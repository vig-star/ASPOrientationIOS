//
//  ParentViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class ParentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func onParentPressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.asparis.org/our-community/community-events")! as URL, options: [:], completionHandler: nil)
    }
    
    
    @IBAction func onParent2Pressed(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.asparis.org/our-community/community-events")! as URL, options: [:], completionHandler: nil)
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
