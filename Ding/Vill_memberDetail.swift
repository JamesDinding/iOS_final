//
//  Vill_memberDetail.swift
//  Ding
//
//  Created by User02 on 2020/6/19.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct Vill_memberDetail: View {
    var vill_member: VILLAGERS
    var body: some View {
        VStack(alignment: .leading) {
            Text(vill_member.name.name_TWzh)
            .bold()
            .padding()

            URLImage(url: vill_member.image_uri)
            .frame(width: 400, height: 300)
            .scaledToFill()
            .clipped()
            
            Text("性別: " + vill_member.gender)
            .bold()
            .padding()
            
            Text("生日: " + vill_member.birthday)
            .bold()
            .padding()
            
            Text("個性: " + vill_member.personality)
            .bold()
            .padding()
            
        }
    }
}
