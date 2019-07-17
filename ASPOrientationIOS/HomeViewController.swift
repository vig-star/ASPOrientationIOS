//
//  ViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/6/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit


class HomeViewController: ASPViewController {
    override func viewDidLoad() {
		super.viewDidLoad()
		self.title = "ASP Orientation"
	  }
	
//    func transitionToNew(_ menuType: MenuType){
//        var title = ""
//        if((String(describing: menuType)) == ("home")){
//           title = "ASP Orientation"
//        }else if((String(describing: menuType)) == ("map")){
//            title = "Campus Map"
//        }else if((String(describing: menuType)) == ("welcome")){
//            title = "ASP Welcome Program"
//        }else if((String(describing: menuType)) == ("parent")){
//            title = "Parent Faculty Association"
//        }else if((String(describing: menuType)) == ("gradebonding")){
//            title = "Grade Bonding Programs"
//        }else if((String(describing: menuType)) == ("onlineresources")){
//            title = "ASP Online Resources"
//        }else if((String(describing: menuType)) == ("athletics")){
//            title = "Athletics Program"
//        }else if((String(describing: menuType)) == ("cocurricular")){
//            title = "Co-Curricular Activities"
//        }else if((String(describing: menuType)) == ("cafeteria")){
//            title = "Cafeteria Information"
//        }else if((String(describing: menuType)) == ("bus")){
//            title = "Bus Information"
//        }else if((String(describing: menuType)) == ("calendar")){
//            title = "School Calendar"
//        }else if((String(describing: menuType)) == ("share")){
//            title = "Share"
//        }
//        self.title = title
//
//        switch menuType {
//        case .home:
//            self.view.isHidden = false
//			mapViewController.view.isHidden = true
//			pfaViewController.view.isHidden = true
//			gradebondingViewController.view.isHidden = true
//			welcomeViewController.view.isHidden = true
//			athleticsViewController.view.isHidden = true
//			cocurricularViewController.view.isHidden = true
//			cafeteriaViewController.view.isHidden = true
//			busViewController.view.isHidden = true
//			calendarViewController.view.isHidden = true
//			shareViewController.view.isHidden = true
//			resourcesViewController.view.isHidden = true
//        case .map:
//            mapViewController.view.isHidden = false
//			pfaViewController.view.isHidden = true
//			gradebondingViewController.view.isHidden = true
//			welcomeViewController.view.isHidden = true
//			athleticsViewController.view.isHidden = true
//			cocurricularViewController.view.isHidden = true
//			cafeteriaViewController.view.isHidden = true
//			busViewController.view.isHidden = true
//			calendarViewController.view.isHidden = true
//			shareViewController.view.isHidden = true
//			resourcesViewController.view.isHidden = true
//        case .parent:
//            pfaViewController.view.isHidden = false
//			mapViewController.view.isHidden = true
//			gradebondingViewController.view.isHidden = true
//			welcomeViewController.view.isHidden = true
//			athleticsViewController.view.isHidden = true
//			cafeteriaViewController.view.isHidden = true
//			busViewController.view.isHidden = true
//			calendarViewController.view.isHidden = true
//			shareViewController.view.isHidden = true
//			resourcesViewController.view.isHidden = true
//        case .gradebonding:
//            gradebondingViewController.view.isHidden = false
//			mapViewController.view.isHidden = true
//			pfaViewController.view.isHidden = true
//			welcomeViewController.view.isHidden = true
//			athleticsViewController.view.isHidden = true
//			cocurricularViewController.view.isHidden = true
//			cafeteriaViewController.view.isHidden = true
//			busViewController.view.isHidden = true
//			calendarViewController.view.isHidden = true
//			shareViewController.view.isHidden = true
//			resourcesViewController.view.isHidden = true
//		case .onlineresources:
//			resourcesViewController.view.isHidden = false
//			welcomeViewController.view.isHidden = true
//			gradebondingViewController.view.isHidden = true
//			mapViewController.view.isHidden = true
//			pfaViewController.view.isHidden = true
//			athleticsViewController.view.isHidden = true
//			cocurricularViewController.view.isHidden = true
//			cafeteriaViewController.view.isHidden = true
//			busViewController.view.isHidden = true
//			calendarViewController.view.isHidden = true
//			shareViewController.view.isHidden = true
//		case .welcome:
//			welcomeViewController.view.isHidden = false
//			gradebondingViewController.view.isHidden = true
//			mapViewController.view.isHidden = true
//			pfaViewController.view.isHidden = true
//			athleticsViewController.view.isHidden = true
//			cocurricularViewController.view.isHidden = true
//			cafeteriaViewController.view.isHidden = true
//			busViewController.view.isHidden = true
//			calendarViewController.view.isHidden = true
//			shareViewController.view.isHidden = true
//			resourcesViewController.view.isHidden = true
//		case .athletics:
//			athleticsViewController.view.isHidden = false
//			welcomeViewController.view.isHidden = true
//			gradebondingViewController.view.isHidden = true
//			mapViewController.view.isHidden = true
//			pfaViewController.view.isHidden = true
//			cocurricularViewController.view.isHidden = true
//			cafeteriaViewController.view.isHidden = true
//			busViewController.view.isHidden = true
//			calendarViewController.view.isHidden = true
//			shareViewController.view.isHidden = true
//			resourcesViewController.view.isHidden = true
//		case .cocurricular:
//			cocurricularViewController.view.isHidden = false
//			athleticsViewController.view.isHidden = true
//			welcomeViewController.view.isHidden = true
//			gradebondingViewController.view.isHidden = true
//			mapViewController.view.isHidden = true
//			pfaViewController.view.isHidden = true
//			cafeteriaViewController.view.isHidden = true
//			busViewController.view.isHidden = true
//			calendarViewController.view.isHidden = true
//			shareViewController.view.isHidden = true
//			resourcesViewController.view.isHidden = true
//		case .cafeteria:
//			cafeteriaViewController.view.isHidden = false
//			cocurricularViewController.view.isHidden = true
//			athleticsViewController.view.isHidden = true
//			welcomeViewController.view.isHidden = true
//			gradebondingViewController.view.isHidden = true
//			mapViewController.view.isHidden = true
//			pfaViewController.view.isHidden = true
//			busViewController.view.isHidden = true
//			calendarViewController.view.isHidden = true
//			shareViewController.view.isHidden = true
//			resourcesViewController.view.isHidden = true
//		case .bus:
//			busViewController.view.isHidden = false
//			cocurricularViewController.view.isHidden = true
//			athleticsViewController.view.isHidden = true
//			welcomeViewController.view.isHidden = true
//			gradebondingViewController.view.isHidden = true
//			mapViewController.view.isHidden = true
//			pfaViewController.view.isHidden = true
//			cafeteriaViewController.view.isHidden = true
//			calendarViewController.view.isHidden = true
//			shareViewController.view.isHidden = true
//			resourcesViewController.view.isHidden = true
//		case .calendar:
//			UIApplication.shared.open(URL(string: "https://sites.google.com/a/asparis.fr/navcom/calus?pli=1")! as URL, options: [:], completionHandler: nil)
//			calendarViewController.view.isHidden = false
//			shareViewController.view.isHidden = true
//			cocurricularViewController.view.isHidden = true
//			athleticsViewController.view.isHidden = true
//			welcomeViewController.view.isHidden = true
//			gradebondingViewController.view.isHidden = true
//			mapViewController.view.isHidden = true
//			pfaViewController.view.isHidden = true
//			cafeteriaViewController.view.isHidden = true
//			busViewController.view.isHidden = true
//			resourcesViewController.view.isHidden = true
//		case .share:
//			shareViewController.view.isHidden = false
//			cocurricularViewController.view.isHidden = true
//			athleticsViewController.view.isHidden = true
//			welcomeViewController.view.isHidden = true
//			gradebondingViewController.view.isHidden = true
//			mapViewController.view.isHidden = true
//			pfaViewController.view.isHidden = true
//			cafeteriaViewController.view.isHidden = true
//			busViewController.view.isHidden = true
//			calendarViewController.view.isHidden = true
//			resourcesViewController.view.isHidden = true
//
//
//
//            /*let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//            backgroundImage.image = UIImage(named: "campusmap")
//            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFit
//            self.view.insertSubview(backgroundImage, at: 0)
//            let view = UIView()
//            let color = UIColor(red: 57, green: 48, blue: 115)
//            view.backgroundColor = color
//            view.frame = self.view.bounds
//            self.view.addSubview(view)*/
//        default:
//            break
//        }
//
//
//    }
	
//    private func addViewControllerAsChildViewController(childViewController: UIViewController){
//        addChild(childViewController)
//        view.addSubview(childViewController.view)
//        childViewController.view.frame = view.bounds
//        childViewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        childViewController.didMove(toParent: self)
//    }
	
}

/*extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
*/
//extension HomeViewController: UIViewControllerTransitioningDelegate{
//    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        transition.isPresenting = true
//        return transition
//    }
//
//    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        transition.isPresenting = false
//        return transition
//    }
//}
