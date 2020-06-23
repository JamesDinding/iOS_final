//
//  TurnipsView.swift
//  Ding
//
//  Created by User02 on 2020/6/15.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI
import Foundation
import UIKit

struct TurnipsView: View {
/*
    func buttonclicked(web: String){
        guard let url = URL(string: web) else {
            return
        }
        UIApplication.shared.open(url)
    }
*/
    @State private var buttonclick: Bool = false
    var body: some View {
        ZStack{
            VStack(alignment: .leading) {
                    HStack{
                        Image("daisy")
                            .resizable()
                            .frame(width: 200, height: 250)
                        Text("點選以下網站去預測大頭菜價格！！")
                        .foregroundColor(Color.black)
                        .bold()
                        .padding()
                    }
                    
                
                HStack {
                    Image("icon-turnip")
                    Button(NSLocalizedString("大頭菜賣價預測 - 1", comment: "")) {
                        self.buttonclick = true
                    }
                    .sheet(isPresented: $buttonclick) {
                        SafariView(url: URL(string: "https://turnipprophet.io/index.html")!)
                    }
                }
                .padding(10)
                
                HStack {
                    Image("icon-turnip")
                    Button(NSLocalizedString("大頭菜賣價預測 - 2", comment: "")) {
                        self.buttonclick = true
                    }
                    .sheet(isPresented: $buttonclick) {
                        SafariView(url: URL(string: "https://www.4gamers.com.tw/animal-crossing-turnips-calculator")!)
                    }
                }
                .padding(10)
                    
/*
                    Button(action: {
                        self.buttonclicked(web: "https://www.4gamers.com.tw/animal-crossing-turnips-calculator")
                    }) {
                        HStack{
                            Image("icon-turnip")
                            Text("大頭菜賣價預測 - 2")
                                .foregroundColor(Color.blue)
                            .bold()
                            .padding()
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
 */
                }
                .padding()
            }
        .background(Image("BG").opacity(0.15))
        }
}
