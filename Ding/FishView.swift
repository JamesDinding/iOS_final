//
//  FishView.swift
//  Ding
//
//  Created by User02 on 2020/6/15.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI
import Foundation


struct FishView: View {
    @State private var fish_member = [FISH]()
    @State private var scale: CGFloat = 1
    @State private var count = 1
    @State private var firstpageload = false
    
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
    
    
    var body: some View {
        VStack {
            NavigationView {
                List(fish_member.indices, id: \.self, rowContent: { (index) in
                 NavigationLink(destination: Fish_memberDetail(fish_member:
                self.fish_member[index])) {
                 Fish_memberRow(fish_member: self.fish_member[index])
                 }
                 })
                    .onAppear {
                        if(self.firstpageload != true){
                            for i in (1...80) {
                                self.load_fish(count: i)
                            }
                            self.firstpageload = true
                        }
                }
            .navigationBarTitle(Text(NSLocalizedString("魚兒", comment: "")))
            }
        }
    }
}
