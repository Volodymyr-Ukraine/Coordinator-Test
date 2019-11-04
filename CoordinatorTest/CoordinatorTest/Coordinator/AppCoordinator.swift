//
//  AppCoordinator.swift
//  CoordinatorTest
//
//  Created by Vladimir on 11/3/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit

final class AppCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        madeFirst()
    }
    
    private func madeFirst(){
        let contr = FirstMassiveViewController()
        self.navigationController.pushViewController(contr, animated: true)
        contr.eventHandler = { event in
            switch(event) {
            case .toDo(let text): self.madeSecond(text: text)
            }
        }
    }
    
    private func madeSecond(text: String?){
        let contr = SecondMassiveViewController()
        contr.setTest(text: text)
        self.navigationController.pushViewController(contr, animated: true)
        contr.eventHandler = { event in
            switch(event) {
            case .back(let str): self.navigationController.popViewController(animated: true)
            if let vc = (self.navigationController.visibleViewController as? FirstMassiveViewController) {
                vc.setText(text: str)
                }
                
            }
        }
    }
}
