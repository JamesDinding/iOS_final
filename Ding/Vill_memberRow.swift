//
//  Vill_memberRow.swift
//  Ding
//
//  Created by User02 on 2020/6/19.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct Vill_memberRow: View {
    var vill_member: VILLAGERS
    var body: some View {
        HStack {
            URLImage(url: vill_member.icon_uri)
            .frame(width: 46, height: 46)
            .scaledToFill()
            .clipped()
            
            Text("名字: "+vill_member.name.name_TWzh)
            .bold()
            .padding()
        }
    }
}
