//
//  SearchView.swift
//  Ding
//
//  Created by User02 on 2020/6/19.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI
import Foundation

struct SearchView: View {
    @State var target_name: String = ""
    //@State private var fish_member = [FISH]()
    //@State private var bugs_member = [BUGS]()
    var fish_member: FISH
    var bugs_member: BUGS
    @State private var fish_search: FISH
    @State private var bugs_search: BUGS
    @State private var count = 1
    @State private var firstpageload = false
    /*
    func load_fish(count: Int) {
        let urlStr = "https://acnhapi.com/v1/fish/"+String(count)
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                let decoder = JSONDecoder()
                if let data = data {
                    do {
                        let fish_results = try decoder.decode(FISH.self, from: data)
                        print(fish_results)
                        self.fish_member.append(fish_results)
                    } catch {
                        print(error)
                    }
                }
            }.resume()
        }
    }
    
    func load_bugs(count: Int) {
        let urlStr = "https://acnhapi.com/v1/bugs/"+String(count)
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                let decoder = JSONDecoder()
                if let data = data {
                    do {
                        let bugs_results = try decoder.decode(BUGS.self, from: data)
                        print(bugs_results)
                        self.bugs_member.append(bugs_results)
                    } catch {
                        print(error)
                    }
                }
            }.resume()
        }
    }
    */
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextField("enter", text: $target_name)
                Button(action: {
                    self.target_name = self.target_name.lowercased().trimmingCharacters(in: .whitespaces)
                    /*
                    if (!self.firstpageload){
                        for i in (1...80){
                            self.load_fish(count: i)
                            self.load_bugs(count: i)
                        }
                        self.firstpageload = true
                    }
 */
                    for j in (1...80){
                        if(self.target_name == self.fish_member[j].name.name_USen) {
                            self.fish_search = self.fish_member[j]
                        }
                        if(self.target_name == self.bugs_member[j].name.name_USen) {
                            self.bugs_search = self.bugs_member[j]
                        }
                    }
                }) {
                Text("enter english name")
                }
            }
            
            HStack {
                URLImage(url: bugs_search.image_uri)
                .frame(width: 400, height: 200)
                .scaledToFill()
                .clipped()
                Text(String(bugs_search.price))
            }
            
            HStack {
                URLImage(url: fish_search.image_uri)
                .frame(width: 400, height: 200)
                .scaledToFill()
                .clipped()
                Text(String(fish_search.price))
            }
            
            
        }
        .padding()
        
    }
}

struct SearchView_preview: PreviewProvider {
    static var previews: some View {
        SearchView(searchText: .constant(""), placeholder:(""))
    }
}
