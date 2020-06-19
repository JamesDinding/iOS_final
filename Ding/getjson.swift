//
//  getjson.swift
//  Ding
//
//  Created by User02 on 2020/6/15.
//  Copyright © 2020 sun. All rights reserved.
//

import Foundation

struct Fish: Decodable {
    var id: Int
    //var name: Name
    var availability: Availability
    var price: Int
    var image_uri: URL
    var icon_uri: URL
}

struct Availability: Decodable {
    var month_northern: [Int]
    var time_array: [Int]
    
}


func getfish() {
    let fish_url = "https://acnhapi.com/v1/fish/"
    guard let url = URL(string: fish_url) else { return }
    
    URLSession.shared.dataTask(with: url) { (data, response, err) in
        guard let data = data else { return }
        do {
            let fish = try
                JSONDecoder().decode([Fish].self, from: data)
            print(fish.self)
        } catch let jsonErr{
            print("Error serializing json:", jsonErr)
        }
    }
}
