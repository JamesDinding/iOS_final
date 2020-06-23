//
//  VideoView.swift
//  Ding
//
//  Created by User02 on 2020/6/23.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI

struct VideoView: View {
    @State private var urlString = ["https://www.youtube.com/watch?v=Ym-du0JTkZ4"]
    var body: some View {
        VStack {
            WebView(urlString: urlString[0])
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
