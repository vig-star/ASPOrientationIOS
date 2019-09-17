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
        webViewController.urlString = "https://resources.finalsite.net/images/v1566397947/asp/ysrhuri8bq9imqnppzza/MorningandAfternoon340bus.pdf"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    @IBAction func onButtonPressedfive(_ sender: Any) {
        webViewController.urlString = "https://resources.finalsite.net/images/v1566397935/asp/soqw0ywgssaazsa2rvlm/5157h30buses201920.pdf"
        self.navigationController?.pushViewController(webViewController, animated: true)
        
    }
    
    @IBAction func onButtonPressedsix(_ sender: Any) {
        webViewController.urlString = "https://resources.finalsite.net/images/v1566397873/asp/ahat3dpgkljy7uefnnkk/6_30_18h30buses2019201.pdf"
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
