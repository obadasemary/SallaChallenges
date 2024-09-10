//
//  ContentView.swift
//  SallaChallenges
//
//  Created by Abdelrahman Mohamed on 11/09/2024.
//

import SwiftUI
import BrandUI

struct ContentView: View {
    
    @State var isLoadingState: Bool = false
    
    var body: some View {
        VStack {
            if isLoadingState {
                BrandUILoadingPlaceholderView()
                    .padding(.top, BrandUIConstants.spacing8)
                    .padding(.horizontal, BrandUIConstants.spacing16)
                    .padding(.bottom, BrandUIConstants.spacing24)
            } else {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                    .hide(if: isLoadingState)
                
                Button(
                    action: {
                        isLoadingState = true
                    }, label: {
                        Text("Button")
                    }
                )
            }
        }
        .padding()
        
        
    }
}

#Preview {
    ContentView()
}
