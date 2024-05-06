//
//  xDismissButton.swift
//  AppleUIFrameworksApp
//
//  Created by Chinaza Ugwuoke on 5/6/24.
//

import SwiftUI

struct xDismissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                isShowingDetailView = false
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            })
            .padding()
        }
    }
}

#Preview {
    xDismissButton(isShowingDetailView: .constant(false))
}
