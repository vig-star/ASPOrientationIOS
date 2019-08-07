//
//  LoginViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 8/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //print token
        
        
    }
    
    @IBAction func loginButton(_ sender: Any) {
        if (userName!.text == "asparis" && passWord!.text == "GXXQ1946") {
            UserDefaults.standard.set("U", forKey: "mytoken")
            self.performSegue(withIdentifier: "HomeSegue", sender: self)
        }
        else {
            showToast(message: "Incorrect username or password")
        }
    }
    
    func showToast(message : String) {
        
        let toastLabel = UILabel(frame: CGRect(x: 75, y: loginButton.frame.minY + 150, width: self.view.frame.size.width - 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 12.0)
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
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
