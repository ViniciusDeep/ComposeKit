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
        Text("Legal").position(top: 30, left: 0, bottom: 0, right: 0)
        DrawImage(#imageLiteral(resourceName: "image")).position(top: 30, left: 0, bottom: 0, right: 0)
    }
}

