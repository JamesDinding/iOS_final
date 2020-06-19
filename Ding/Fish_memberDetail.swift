//
//  Fish_memberDetail.swift
//  Ding
//
//  Created by User02 on 2020/6/18.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI
import Foundation


struct Fish_memberDetail: View {
    var fish_member: FISH
    var body: some View {
        VStack (alignment: .leading) {
            Text(fish_member.name.name_TWzh)
            .bold()
            .padding()

            URLImage(url: fish_member.image_uri)
            .frame(width: 400, height: 200)
            
            .scaledToFill()
            .clipped()
            
            
            if(fish_member.availability.time == "" || fish_member.availability.time == nil) {
                Text("每日出現時間: 24小時不打烊")
                .bold()
                .padding()
            } else {
                Text("每日出現時間:" + String(fish_member.availability.time!))
                .bold()
                .padding()
            }
            
            if(fish_member.availability.month_northern == "" || fish_member.availability.month_northern == nil) {
                Text("出現月份: 慟! 全年無休")
                .bold()
                .padding()
            } else {
                Text("出現月份:" + String(fish_member.availability.month_northern!))
                .bold()
                .padding()
            }
            
            HStack{
                Image("icon-bells")
                Text("售價: " + String(fish_member.price))
                .bold()
                .padding()
                Image("cj")
                    .resizable()
                    .frame(width:150, height:150)
                Text("水獺1.5倍收喔")
                .bold()
                .padding()
            }
            

        }
    }
}
