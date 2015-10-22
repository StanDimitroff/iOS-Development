//
//  RoundButton.swift
//  Stopwatch
//
//  Created by Stanislav Dimitrov on 10/22/15.
//  Copyright © 2015 Stanislav Dimitrov. All rights reserved.
//

import UIKit
class RoundButton: UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 10
        layer.borderWidth = 2
    }
}