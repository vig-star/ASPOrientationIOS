//
//  ASPWebViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/17/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit
import WebKit

class ASPWebViewController: UIViewController, WKUIDelegate {
    
    var webview: WKWebView!
    var urlString: String = ""
    

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webview = WKWebView(frame: .zero, configuration: webConfiguration)
        webview.uiDelegate = self
        view = webview
        
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let link = URL(string: urlString)
        let urlRequest = URLRequest(url: link!)
        webview.load(urlRequest)
        // Do any additional setup after loading the view.
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
