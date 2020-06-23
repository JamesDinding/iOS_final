//
//  ContentView.swift
//  Ding
//
//  Created by User02 on 2020/6/15.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            FishView()
                .tag(0)
                .tabItem {
                    Image("icon-bells-tabbar")
                    Text("fish")
            }
            BugsView()
                .tag(1)
                .tabItem {
                    Image("icon-leaf-tabbar")
                    Text("Bugs")
            }
            
            TurnipsView()
                .tag(2)
                .tabItem {
                    Image("icon-turnip-tabbar")
                    Text("turnips")
            }
            
            VillagersView()
            .tag(3)
                .tabItem {
                    Image("icon-villager-tabbar")
                    Text("villagers")
            }
            
            VideoView()
            .tag(4)
                .tabItem {
                    Image("icon-cardboard-tabbar")
                    Text("intro_video")
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
