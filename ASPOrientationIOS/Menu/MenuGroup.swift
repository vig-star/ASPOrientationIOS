//
//  MenuGroup.swift
//  ASPOrientationIOS
//
//  Created by Vignesh on 7/16/19.
//  Copyright © 2019 VigneshPranav. All rights reserved.
//

import Foundation

struct MenuGroup: Codable {
    
    var groupName: String
    var menuItems:Array<MenuItem>
    var hidden: Bool
}

