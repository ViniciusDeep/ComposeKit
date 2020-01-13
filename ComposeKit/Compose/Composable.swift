//
//  Composable.swift
//  ComposeKit
//
//  Created by Vinicius Mangueira on 08/01/20.
//  Copyright © 2020 Vinicius Mangueira. All rights reserved.
//

import UIKit

protocol Composable {
    func Text(_ text: String) -> Component
}

extension Composable where Self: UIViewController{
    @discardableResult
    func Text(_ text: String) -> Component {
        let textComponent = TextComponent(text: text)
        textComponent.addComponent(toView: self.view)
        return textComponent
    }
}


protocol Component {
    var viewComponent: UIView { get set }
}

extension Component {
    func addComponent(toView view: UIView) {
        view.addSubview(self.viewComponent)
        self.viewComponent.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    @discardableResult
    func position(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> Component {
        guard let view = self.viewComponent.superview else {return self}
        
        NSLayoutConstraint.activate([
                          viewComponent.topAnchor.constraint(equalTo: view.topAnchor, constant: top),
                          viewComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: left),
                          viewComponent.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: right),
                          viewComponent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: bottom)
        ])
        return self
    }
}


