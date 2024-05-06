//
//  SafariView.swift
//  AppleUIFrameworksApp
//
//  Created by Chinaza Ugwuoke on 5/6/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiView: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
