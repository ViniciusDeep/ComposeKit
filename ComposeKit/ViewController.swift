//
//  ViewController.swift
//  ComposeKit
//
//  Created by Vinicius Mangueira on 08/01/20.
//  Copyright © 2020 Vinicius Mangueira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Composable {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    fileprivate func setupUI() {
        Button().position(top: 30, left: 0, bottom: 0, right: 0)
        
        
//        List(["Vinicius", "Mangueira"], alignment: .vertical) { listLayout, element  in
//            listLayout.add(component: Text("Vinicius"))
//
//        }.position(top: 30, left: 0, bottom: 0, right: 0)
    }
}

