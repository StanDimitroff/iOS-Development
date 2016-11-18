//
//  StartStopButton.swift
//  Stopwatch
//
//  Created by Stanislav Dimitrov on 10/22/15.
//  Copyright © 2015 Stanislav Dimitrov. All rights reserved.
//

import UIKit

class StartStopButton: RoundButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.borderColor = UIColor.greenColor().CGColor
        tintColor = UIColor.greenColor()
    }
}