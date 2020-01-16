//
//  Composable.swift
//  ComposeKit
//
//  Created by Vinicius Mangueira on 08/01/20.
//  Copyright © 2020 Vinicius Mangueira. All rights reserved.
//

import UIKit

protocol Composable {}

extension Composable where Self: UIViewController{
    @discardableResult
    func Text(_ text: String) -> Component {
        let textComponent = TextComponent(text: text)
        textComponent.addComponent(toView: self.view)
        return textComponent
    }
    
    @discardableResult
    func DrawImage(_ image: UIImage) -> Component {
        let imageComponent = DrawImageComponent(image: image)
        imageComponent.addComponent(toView: self.view)
        return imageComponent
    }
    
    @discardableResult
    func List(_ items: Array<Any>, alignment: AlignmentList) -> Component {
        let listComponent = ListComponent(elements: items, alignment: alignment)
        listComponent.addComponent(toView: self.view)
        return listComponent
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
                          viewComponent.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: right),
                          viewComponent.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bottom)
        ])
        return self
    }
}


