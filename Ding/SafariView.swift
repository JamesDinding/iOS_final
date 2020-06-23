//
//  SafariView.swift
//  Ding
//
//  Created by User02 on 2020/6/23.
//  Copyright © 2020 sun. All rights reserved.
//

import SwiftUI
import Foundation
import SafariServices


struct SafariView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SFSafariViewController {
         SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
    typealias UIViewControllerType = SFSafariViewController
    
    let url: URL
}
