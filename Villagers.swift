//
//  Villagers.swift
//  Ding
//
//  Created by User02 on 2020/6/19.
//  Copyright © 2020 sun. All rights reserved.
//

import Foundation


struct VILLAGERS: Codable {
    var id: Int
    var name: Name
    var personality: String
    var birthday: String
    var gender: String
    var icon_uri: URL
    var image_uri: URL
}
