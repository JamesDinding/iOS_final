//
//  URLImage.swift
//  Ding
//
//  Created by User02 on 2020/6/19.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI
import Foundation

struct URLImage: View {
    var url: URL
    @State private var image = Image(systemName: "photo")
    @State private var downloadimgfinish = false
    var scale: CGFloat = 1
    
    func download() {
        if let data = try? Data(contentsOf: url), let uiImage = UIImage(data: data) {
            self.image = Image(uiImage: uiImage)
            self.downloadimgfinish = true
        }
    }
    
    var body: some View {
        image
        .resizable()
            .onAppear {
                if self.downloadimgfinish == false {
                    self.download()
                }
        }
    }
}
