//
//  Composable.swift
//  ComposeKit
//
//  Created by Vinicius Mangueira on 08/01/20.
//  Copyright © 2020 Vinicius Mangueira. All rights reserved.
//

import UIKit

protocol Composable {
    func Text(_ text: String)
}

    func Text(_ text: String) {
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10)
        
        ])
        
    }
    
    
}
