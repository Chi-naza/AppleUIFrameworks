//
//  FrameWorkViewModel.swift
//  AppleUIFrameworksApp
//
//  Created by Chinaza Ugwuoke on 5/4/24.
//

import SwiftUI


final class FrameWorkViewModel : ObservableObject {
    
    var selectedFramework : Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    
    let  columns : [GridItem] = [GridItem(.flexible()),GridItem(.flexible()), GridItem(.flexible())]
    
}
