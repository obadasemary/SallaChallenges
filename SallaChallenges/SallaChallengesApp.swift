//
//  SallaChallengesApp.swift
//  SallaChallenges
//
//  Created by Abdelrahman Mohamed on 11/09/2024.
//

import SwiftUI

@main
struct SallaChallengesApp: App {
    
    @StateObject var appCoordinator = AppCoordinator(window: nil)
    
    var body: some Scene {
        WindowGroup {
            AppCoordinatorView(appCoordinator: appCoordinator)
                .onAppear {
                    appCoordinator.start()
                }
        }
    }
}

