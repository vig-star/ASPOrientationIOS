//
//  PFASAViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/8/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class PFASAViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBackPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "BackHomeSegue", sender: self)
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
