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


enum AlignmentList {
    case horizontal
    case vertical
}

struct ListComponent: Component {
    var viewComponent: UIView
    
    init(elements: Array<Any>, alignment: AlignmentList) {
        switch alignment {
        case .horizontal:
            viewComponent = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        case .vertical:
            viewComponent = CustomTableView(elements: elements)
        }
    }
}
