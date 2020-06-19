//
//  Fish_memberRow.swift
//  Ding
//
//  Created by User02 on 2020/6/18.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct Fish_memberRow: View {
    var fish_member: FISH
    var body: some View {
        HStack {
            URLImage(url: fish_member.icon_uri)
                .frame(width: 46, height: 46)
                .scaledToFill()
                .clipped()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("名字: "+fish_member.name.name_TWzh)
                .bold()
                .padding()
                if(fish_member.availability.time == "") {
                    Text("出現時間: 24HR")
                    .bold()
                    .padding()
                } else {
                    Text("出現時間: "+String(fish_member.availability.time!))
                    .bold()
                    .padding()
                }
            }
        }
    }
}
