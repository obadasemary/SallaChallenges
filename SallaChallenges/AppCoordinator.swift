//
//  AppCoordinator.swift
//  SallaChallenges
//
//  Created by Abdelrahman Mohamed on 01/04/2024.
//

import UIKit
import AppDependencyModule
import BrandUI
import BrandDetailsFeature


/// Main application coordinator.
final class AppCoordinator: ObservableObject {
    
    // MARK: Properties
    private weak var window: UIWindow?
    let rootController: UINavigationController
    
    // MARK: Initializationz
    init(
        window: UIWindow?,
        rootController: UINavigationController = UINavigationController()
    ) {
        self.window = window
        self.rootController = rootController
    }
    
    // MARK: Start The Coordinator.
    func start() {
        let brandDetailsUseCase = AppDependencyModule.makeBrandsUseCase()
        let view = BrandDetailsBuilder.build(
            brandDetailsUseCase: brandDetailsUseCase
        ) { destintation in
            switch destintation {
            case .openProductDetails(let productAdapter):
                self.openProductDetails(productAdapter)
            }
        }
        
        self.rootController.viewControllers = [view]
        self.window?.rootViewController = rootController
        window?.makeKeyAndVisible()
    }
}

private extension AppCoordinator {
    func openProductDetails(_ productAdapter: ProductAdapter) {
//        let view = MovieDetailsBuilder.build(movieAdapter: movieAdapter)
//        self.rootController.pushViewController(view, animated: true)
    }
}
