//
//  BusViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

class BusViewController: ASPViewController {
    
    lazy var webViewController: ASPWebViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ASPWebViewController") as! ASPWebViewController
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTitle(title: "ASP Student Transportation")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onButtonPressedBus(_ sender: Any) {
        webViewController.urlString = "https://resources.finalsite.net/images/v1547043527/asp/fd7nm9pferrxm1uusuuk/BusRoutes_2018-19_1.pdf"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    @IBAction func onButtonPressedfive(_ sender: Any) {
        webViewController.urlString = "https://resources.finalsite.net/images/v1547043914/asp/vrf3kibqwyc3mtfeuwx6/Latebuses17h15.pdf"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    @IBAction func onButtonPressedsix(_ sender: Any) {
        webViewController.urlString = "https://resources.finalsite.net/images/v1547043987/asp/fmh9ix8nnv6rr7ueznze/LateBuses18h30.pdf"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
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
