//
//  Fish.swift
//  Ding
//
//  Created by User02 on 2020/6/18.
//  Copyright © 2020 sun. All rights reserved.
//

import Foundation

struct FISH: Codable {
    var id: Int
    var name: Name
    var availability: AVAIL
    var price: Int
    var image_uri: URL
    var icon_uri: URL
}

struct Name: Codable {
    var name_TWzh: String
    var name_USen: String
    enum CodingKeys: String, CodingKey {
        case name_TWzh = "name-TWzh"
        case name_USen = "name-USen"
    }
}
