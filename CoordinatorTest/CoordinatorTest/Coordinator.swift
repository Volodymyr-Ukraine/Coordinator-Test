//
//  Coordinator.swift
//  CoordinatorTest
//
//  Created by Vladimir on 11/3/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit

class Coordinator {
    var currentController: UIViewController?
    
    init(SetController: UIViewController) {
        self.currentController = SetController
    }
    
    public func start(){
        guard var cont = (self.currentController as? CanDo) else {print("ups..."); return}
        cont.toDo = {}
    }
}
