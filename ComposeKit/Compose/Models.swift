//
//  Models.swift
//  ComposeKit
//
//  Created by Vinicius Mangueira on 13/01/20.
//  Copyright © 2020 Vinicius Mangueira. All rights reserved.
//

import UIKit

struct TextComponent: Component {
    var viewComponent: UIView = UILabel()
    
    init(text: String) {
        (viewComponent as? UILabel)?.text = text
    }
}

struct DrawImageComponent: Component {
    var viewComponent: UIView = UIImageView()
    
    init(image: UIImage) {
        (viewComponent as? UIImageView)?.image = UIImage()
    }
}


