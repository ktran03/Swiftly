//
//  KTCollectionViewCell.swift
//  Swiftly
//
//  Created by khanh tran on 2014-06-05.
//  Copyright (c) 2014 ktran03. All rights reserved.
//

import UIKit

class KTCollectionViewCell: UICollectionViewCell {

    
    
    @IBOutlet var aLabel : UILabel

    init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    
}
