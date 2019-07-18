//
//  MapViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/7/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit
import ImageScrollView

class MapViewController: ASPViewController {
    
    @IBOutlet weak var imageScrollView: ImageScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTitle(title: "Campus Map")
        
        // Do any additional setup after loading the view.
        
        imageScrollView.setup()
        
        let mapImage = UIImage(named: "campusmap")!
        imageScrollView.display(image: mapImage)
       // imageScrollView.imageScrollViewDelegate = self
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

//extension MapViewController: ImageScrollViewDelegate {
//    func imageScrollViewDidChangeOrientation(imageScrollView: ImageScrollView) {
//        print("Did change orientation")
//    }
//
//    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
//        print("scrollViewDidEndZooming at scale \(scale)")
//    }
//
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        print("scrollViewDidScroll at offset \(scrollView.contentOffset)")
//    }
//}
