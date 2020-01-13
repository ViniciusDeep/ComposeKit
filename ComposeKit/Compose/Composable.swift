//
//  Composable.swift
//  ComposeKit
//
//  Created by Vinicius Mangueira on 08/01/20.
//  Copyright © 2020 Vinicius Mangueira. All rights reserved.
//

import UIKit

enum ModeOrientation {
    case bellow
    case above
}

protocol Composable {
    func Text(_ text: String)
}

extension Composable where Self: UIViewController{
    func Text(_ text: String) {
        let textComponent = TextComponent(text: text)
        textComponent.addComponent(toView: self.view)
    }
}


protocol Component {
    var viewComponent: UIView { get set }
}

extension Component {
    func addComponent(toView view: UIView) {
        view.addSubview(self.viewComponent)
        self.viewComponent.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
                   viewComponent.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
                   viewComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        ])
    }
}


