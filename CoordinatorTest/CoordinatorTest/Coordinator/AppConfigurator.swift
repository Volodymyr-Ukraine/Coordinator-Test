//
//  AppConfigurator.swift
//  CoordinatorTest
//
//  Created by Vladimir on 11/3/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit

final class AppConfigurator {
    
    private var coordinator: Coordinator?
    
    init(window: UIWindow) {
        self.configure(window: window)
    }
    
    private func configure(window: UIWindow) {
        let navigationController = UINavigationController()
        window.rootViewController = navigationController
        navigationController.navigationBar.isHidden = true
        self.coordinator = AppCoordinator(navigationController: navigationController)
        self.coordinator?.start()
        window.makeKeyAndVisible()
    }
}
