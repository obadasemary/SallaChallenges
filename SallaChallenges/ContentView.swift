//
//  ContentView.swift
//  SallaChallenges
//
//  Created by Abdelrahman Mohamed on 11/09/2024.
//

import SwiftUI
import AppDependencyModule
import BrandUI
import BrandDetailsFeature

struct ContentView: View {
    
    @State var isLoadingState: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                let viewModel = BrandDetailsViewModel(
                    brandDetailsUseCase: AppDependencyModule.makeBrandsUseCase()
                )
                BrandDetailsView(viewModel: viewModel)
            }
            .navigationTitle("Salla")
        }
    }
}

#Preview {
    ContentView()
}
