//
//  SecondMassiveViewController.swift
//  CoordinatorTest
//
//  Created by Vladimir on 11/3/19.
//  Copyright © 2019 Volodymyr. All rights reserved.
//

import UIKit

enum SecondEvent {
    case back(String?)
}

class SecondMassiveViewController: UIViewController {
    
    // MARK: -
    // MARK: Properties
    
    private weak var button: UIButton? = nil
    public var eventHandler: ((SecondEvent)->())? = nil
    private var textButton = "Second"
    // MARK: -
    // MARK: Init and Deinit
    
    // !!! Init(Data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let but = UIButton(frame: self.view.bounds)
        but.setTitle(textButton, for: .normal)
        but.tintColor = .black
        self.button = but
        but.backgroundColor = .red
        but.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchDown)
        self.view.addSubview(but)
    }
    
    deinit {
        print("пока")
    }
    
    // MARK: -
    // MARK: Methods
    
    public func setTest(text: String?) {
        let t = text
        let s = self.textButton
        self.textButton = (t ?? "") + (s ?? "" )
    }
    
    @objc private func buttonPressed(sender: UIButton) {
        self.eventHandler?(.back(self.button?.title(for: .normal)))
    }
    
}
