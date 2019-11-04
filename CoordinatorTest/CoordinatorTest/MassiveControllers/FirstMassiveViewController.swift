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

enum FirstEvent{
    case toDo(String?)
}

class FirstMassiveViewController: UIViewController {
    
    // MARK: -
    // MARK: Properties
    
    private weak var button: UIButton? = nil
    public var eventHandler: ((FirstEvent)->())?
    private var textButton: String = "First"
    
    // MARK: -
    // MARK: Init and Deinit
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let but = UIButton(frame: self.view.bounds)
        but.setTitle(self.textButton, for: .normal)
        but.tintColor = .black
        but.titleLabel?.textColor = .black
        but.setTitleColor(.black, for: .normal)
        self.button = but
        but.backgroundColor = .yellow
        but.addTarget(self, action: #selector(buttonPressed(sender:)), for: .touchDown)
        self.view.addSubview(but)
    }
    
    // MARK: -
    // MARK: Methods
    
    public func setText(text: String?) {
        let t = text
        let s = self.textButton
        self.textButton = (t ?? "") + (s ?? "" )
        self.button?.setTitle(self.textButton, for: .normal)
    }
    
    @objc private func buttonPressed(sender: UIButton) {
        self.eventHandler?(.toDo(self.button?.titleLabel?.text))
        
    }
    
}
