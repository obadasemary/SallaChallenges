//
//  AppCoordinatorView.swift
//  SallaChallenges
//
//  Created by Abdelrahman Mohamed on 12/09/2024.
//

import SwiftUI
import UIKit

struct AppCoordinatorView: UIViewControllerRepresentable {
    
    let appCoordinator: AppCoordinator
    
    func makeUIViewController(context: Context) -> UIViewController {
        let rootViewController = appCoordinator.rootController
        return rootViewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
