//
//  FrameworkDetailView.swift
//  AppleUIFrameworksApp
//
//  Created by Chinaza Ugwuoke on 5/4/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            xDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            GridViewImageAndTextView(frameWork: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
                //AFButton(title: "Learn More") // adding iOS 15 button below
                Label("Learn More", systemImage: "book.fill")
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .tint(.white)
                   
                
            })
        }.fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}
