//
//  TitleDetailInterfaceController.swift
//  Jordan Singer WWDC 15
//
//  Created by Jordan Singer on 4/27/15.
//  Copyright (c) 2015 Jordan Singer. All rights reserved.
//

import WatchKit
import Foundation

class TitleDetailInterfaceController: WKInterfaceController {
    
    @IBOutlet var descriptionLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        if let cell = context as? String {
            descriptionLabel.setText(cell)
        }
    }
}