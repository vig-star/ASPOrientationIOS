//
//  MenuViewController.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/6/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import UIKit

enum MenuType: Int{
    case home
    case firstyear
    case map
    case welcome
    case parent
    case gradebonding
    case important
    case onlineresources
    case athletics
    case cocurricular
    case cafeteria
    case bus
    case calendar
    case communicate
    case share
    
    
}
class MenuCell: UITableViewCell {
    
}

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var didTapMenuType: ((MenuType) -> Void)?
    
    var menuGroup: Array<MenuGroup>?
    
    lazy var mapViewController: MapViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "MapViewController") as! MapViewController
        return viewController
    }()
    
    lazy var homeViewController: HomeViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        return viewController
    }()
    
    lazy var welcomeViewController: WelcomeViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "WelcomeViewController") as! WelcomeViewController
        return viewController
    }()
    
    lazy var pfaViewController: PFAViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "PFAViewController") as! PFAViewController
        return viewController
    }()
    
    lazy var gradebondingViewController: GradeBondingViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "GradeBondingViewController") as! GradeBondingViewController
        return viewController
    }()
    
    lazy var resourcesViewController: ResourcesViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ResourcesViewController") as! ResourcesViewController
        return viewController
    }()
    
    lazy var athleticsViewController: AthleticsViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "AthleticsViewController") as! AthleticsViewController
        return viewController
    }()
    
    lazy var cocurricularViewController: CoCurricularViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "CoCurricularViewController") as! CoCurricularViewController
        return viewController
    }()
    
    lazy var cafeteriaViewController: CafeteriaViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "CafeteriaViewController") as! CafeteriaViewController
        return viewController
    }()
    
    lazy var busViewController: BusViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "BusViewController") as! BusViewController
        return viewController
    }()
    
    lazy var calendarViewController: CalendarViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "CalendarViewController") as! CalendarViewController
        return viewController
    }()
    
    lazy var shareViewController: ShareViewController = {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        var viewController = storyboard.instantiateViewController(withIdentifier: "ShareViewController") as! ShareViewController
        return viewController
    }()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMenu()
    }
    
    func setupMenu(){
        //-- Home Sectiom
        // var homeSection: Array<MenuItem>
        // let menuItem =  MenuItem(title: "Home", iconName: "home")
        let homeGroup = MenuGroup(groupName: "Home", menuItems: [MenuItem(title: "Home", iconName: "home")],hidden: true)
        menuGroup = []
        menuGroup?.append(homeGroup)
        
        // Your First Year at ASP
        var firstYearASPGroupItems: Array<MenuItem>
        firstYearASPGroupItems = [MenuItem(title: "Campus Map", iconName: "map"),
                                  MenuItem(title: "ASP Welcome Program", iconName: "welcome"),
                                  MenuItem(title: "Parent Faculty Association", iconName: "pfa"),
                                  MenuItem(title: "Grade Bonding Programs", iconName: "bonding")]
        
        let firstYearASPGroup = MenuGroup(groupName: "Your First Year at ASP", menuItems: firstYearASPGroupItems, hidden: false)
        menuGroup?.append(firstYearASPGroup)

        //Important Information
        var importantinfoASPGroupItems: Array<MenuItem>
        importantinfoASPGroupItems = [MenuItem(title: "ASP Online Resources", iconName: "online"),
                                      MenuItem(title: "Athletics Program", iconName: "sports"),
                                      MenuItem(title: "Co-Curricular Activities", iconName: "cca"),
                                      MenuItem(title: "Cafeteria Information", iconName: "food"),
                                      MenuItem(title: "Bus Information", iconName: "bus"),
                                      MenuItem(title: "School Calendar", iconName: "calendar")]
        
        let importantinfoASPGroup = MenuGroup(groupName: "Important Information", menuItems: importantinfoASPGroupItems, hidden: false)
        menuGroup?.append(importantinfoASPGroup)
        
        //Communicate
        var communicateASPGroupItems: Array<MenuItem>
        communicateASPGroupItems = [MenuItem(title: "Share", iconName: "share")]
        let communicateASPGroup = MenuGroup(groupName: "Communicate", menuItems: communicateASPGroupItems, hidden: false)
        menuGroup?.append(communicateASPGroup)
    }
    
        
    func numberOfSections(in tableView: UITableView) -> Int {
        return menuGroup?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let groupItem = menuGroup?[section]
        return groupItem?.menuItems.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        let groupItem = menuGroup?[section]
        if (!groupItem!.hidden)  {
            return 70
        }else {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let groupItem = menuGroup?[section]
        if (!groupItem!.hidden)  {
            let view = UIView()
            view.backgroundColor = UIColor.white
            let groupTitle = UILabel(frame: CGRect(x: 10, y: 10, width: 200, height: 50))
            groupTitle.text = groupItem?.groupName
            view.addSubview(groupTitle)
            return view
        }else {
            return nil
        }
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let groupItem = menuGroup?[indexPath.section]
        let menuItem =  groupItem?.menuItems[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuItemTableViewCell
        cell.lableName?.text = menuItem?.title
        cell.iconImage.image = UIImage(named: menuItem!.iconName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let groupItem = menuGroup?[indexPath.section]
        let menuItem =  groupItem?.menuItems[indexPath.row]
        if (menuItem?.title == "Home") {
            if ((self.navigationController?.viewControllers .contains(homeViewController))!) {
                if(self.navigationController?.topViewController == homeViewController){
                    self.dismiss(animated: true, completion: nil)
                }else {
                    self.navigationController?.popToViewController(homeViewController, animated: true)
                }

            }else {
                self.navigationController?.pushViewController(homeViewController, animated: true)
            }
        }else if (menuItem?.title == "Campus Map") {
            if ((self.navigationController?.viewControllers .contains(mapViewController))!) {
                self.navigationController?.popToViewController(mapViewController, animated: true)
            }else {
                self.navigationController?.pushViewController(mapViewController, animated: true)
            }
        }else if (menuItem?.title == "ASP Welcome Program") {
            if ((self.navigationController?.viewControllers .contains(welcomeViewController))!) {
                self.navigationController?.popToViewController(welcomeViewController, animated: true)
            }else {
                self.navigationController?.pushViewController(welcomeViewController, animated: true)
            }
        }else if (menuItem?.title == "Parent Faculty Association") {
            if ((self.navigationController?.viewControllers .contains(pfaViewController))!) {
                self.navigationController?.popToViewController(pfaViewController, animated: true)
            }else {
                self.navigationController?.pushViewController(pfaViewController, animated: true)
            }
        }else if (menuItem?.title == "Grade Bonding Programs") {
            if ((self.navigationController?.viewControllers .contains(gradebondingViewController))!) {
                self.navigationController?.popToViewController(gradebondingViewController, animated: true)
            }else {
                self.navigationController?.pushViewController(gradebondingViewController, animated: true)
            }
        }else if (menuItem?.title == "ASP Online Resources") {
            if ((self.navigationController?.viewControllers .contains(resourcesViewController))!) {
                self.navigationController?.popToViewController(resourcesViewController, animated: true)
            }else {
                self.navigationController?.pushViewController(resourcesViewController, animated: true)
            }
        }else if (menuItem?.title == "Athletics Program") {
            if ((self.navigationController?.viewControllers .contains(athleticsViewController))!) {
                self.navigationController?.popToViewController(athleticsViewController, animated: true)
            }else {
                self.navigationController?.pushViewController(athleticsViewController, animated: true)
            }
        }else if (menuItem?.title == "Co-Curricular Activities") {
            if ((self.navigationController?.viewControllers .contains(cocurricularViewController))!) {
                self.navigationController?.popToViewController(cocurricularViewController, animated: true)
            }else {
                self.navigationController?.pushViewController(cocurricularViewController, animated: true)
            }
        }else if (menuItem?.title == "Cafeteria Information") {
            if ((self.navigationController?.viewControllers .contains(cafeteriaViewController))!) {
                self.navigationController?.popToViewController(cafeteriaViewController, animated: true)
            }else {
                self.navigationController?.pushViewController(cafeteriaViewController, animated: true)
            }
        }else if (menuItem?.title == "Bus Information") {
            if ((self.navigationController?.viewControllers .contains(busViewController))!) {
                self.navigationController?.popToViewController(busViewController, animated: true)
            }else {
                self.navigationController?.pushViewController(busViewController, animated: true)
            }
        }else if (menuItem?.title == "School Calendar") {
//            UIApplication.shared.open(URL(string: "https://sites.google.com/a/asparis.fr/navcom/calus?pli=1")! as URL, options: [:], completionHandler: nil)
            
            if ((self.navigationController?.viewControllers .contains(calendarViewController))!) {
                self.navigationController?.popToViewController(calendarViewController, animated: true)
            }else {
                self.navigationController?.pushViewController(calendarViewController, animated: true)
            }
        }else if (menuItem?.title == "Share") {
            if ((self.navigationController?.viewControllers .contains(shareViewController))!) {
                self.navigationController?.popToViewController(shareViewController, animated: true)
            }else {
                self.navigationController?.pushViewController(shareViewController, animated: true)
            }
        }
        
      
    }
    
    
        func transitionToNew(_ menuType: MenuType){
            var title = ""
            if((String(describing: menuType)) == ("home")){
               title = "ASP Orientation"
            }else if((String(describing: menuType)) == ("map")){
                title = "Campus Map"
            }else if((String(describing: menuType)) == ("welcome")){
                title = "ASP Welcome Program"
            }else if((String(describing: menuType)) == ("parent")){
                title = "Parent Faculty Association"
            }else if((String(describing: menuType)) == ("gradebonding")){
                title = "Grade Bonding Programs"
            }else if((String(describing: menuType)) == ("onlineresources")){
                title = "ASP Online Resources"
            }else if((String(describing: menuType)) == ("athletics")){
                title = "Athletics Program"
            }else if((String(describing: menuType)) == ("cocurricular")){
                title = "Co-Curricular Activities"
            }else if((String(describing: menuType)) == ("cafeteria")){
                title = "Cafeteria Information"
            }else if((String(describing: menuType)) == ("bus")){
                title = "Bus Information"
            }else if((String(describing: menuType)) == ("calendar")){
                title = "School Calendar"
            }else if((String(describing: menuType)) == ("share")){
                title = "Share"
            }
            self.title = title
    
        }
}
