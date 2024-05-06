//
//  GridView.swift
//  AppleUIFrameworksApp
//
//  Created by Chinaza Ugwuoke on 4/16/24.
//

import SwiftUI

struct GridView: View {
    @StateObject var viewModel = FrameWorkViewModel()
    
    
                                          
    var body: some View {
        
        NavigationView(content: {
            
            ScrollView {
                
                LazyVGrid(columns: viewModel.columns){
                    
                    ForEach(MockData.frameworks){
                        framework in
                        GridViewImageAndTextView(frameWork: framework)
                            // on tap gesture on each of the grid item: selects the framework item
                            .onTapGesture {
                                print("Tapped \(framework.name)")
                                viewModel.selectedFramework = framework
                            }
                    }
                    
                }
                
            }
           .navigationTitle("🍎 FrameWorks")
            // bottom sheet is triggered
           .sheet(isPresented: $viewModel.isShowingDetailView, content: {
               FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
           })
        })
        
        
        
       
    }
}

#Preview {
    GridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

