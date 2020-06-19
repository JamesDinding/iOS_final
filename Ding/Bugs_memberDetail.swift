//
//  Bugs_memberDetail.swift
//  Ding
//
//  Created by User02 on 2020/6/19.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct Bugs_memberDetail: View {
    var bugs_member: BUGS
    var body: some View {
        VStack (alignment: .leading) {
            Text(bugs_member.name.name_TWzh)
            .bold()
            .padding()

            URLImage(url: bugs_member.image_uri)
            .frame(width: 400, height: 200)
            
            .scaledToFill()
            .clipped()
            
            
            if(bugs_member.availability.time == "" || bugs_member.availability.time == nil) {
                Text("每日出現時間: 24小時不打烊")
                .bold()
                .padding()
            } else {
                Text("每日出現時間:" + String(bugs_member.availability.time!))
                .bold()
                .padding()
            }
            
            if(bugs_member.availability.month_northern == "" || bugs_member.availability.month_northern == nil) {
                Text("出現月份: 慟! 全年無休")
                .bold()
                .padding()
            } else {
                Text("出現月份:" + String(bugs_member.availability.month_northern!))
                .bold()
                .padding()
            }
            
            HStack{
                Image("icon-bells")
                Text("售價: " + String(bugs_member.price))
                .bold()
                .padding()
                Image("flick")
                    .resizable()
                    .frame(width:150, height:150)
                Text("龍克斯1.5倍收喔")
                .bold()
                .padding()
            }
            

        }
    }
}