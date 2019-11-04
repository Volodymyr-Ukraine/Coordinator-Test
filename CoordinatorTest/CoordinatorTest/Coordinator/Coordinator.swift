//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by Vladimir on 11/3/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get }
    func start()
}
