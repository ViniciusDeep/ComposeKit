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
        self.view.backgroundColor = .black
        setupUI()
    }
    
    fileprivate func setupUI() {
        Text("Legal").position(top: 100, left: 100, bottom: 0, right: 100)
    }
}

