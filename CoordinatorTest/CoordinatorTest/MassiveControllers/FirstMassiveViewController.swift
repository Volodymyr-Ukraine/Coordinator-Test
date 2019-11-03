//
//  FirstMassiveController.swift
//  CoordinatorTest
//
//  Created by Vladimir on 11/3/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit

protocol CanDo {
    var toDo: (()->())? {get set}
}

class FirstMassiveViewController: UIViewController, CanDo {
    
    // MARK: -
    // MARK: Properties
    
    private weak var button: UIButton? = nil
    public var toDo: (()->())? = nil
    
    // MARK: -
    // MARK: Init and Deinit
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let but = UIButton(frame: self.view.bounds)
        let label = UILabel(frame: but.frame)
        label.text = "First"
        self.button = but
        but.backgroundColor = .yellow
        but.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchDown)
        self.view.addSubview(but)
    }
    
    // MARK: -
    // MARK: Methods
    
    @objc private func buttonPressed(sender: UIButton) {
        if let realyDo = toDo {
            realyDo()
        }
    }
    
}
