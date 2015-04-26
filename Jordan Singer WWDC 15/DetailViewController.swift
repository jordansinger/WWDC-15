//
//  DetailViewController.swift
//  Jordan Singer WWDC 15
//
//  Created by Jordan Singer on 4/14/15.
//  Copyright (c) 2015 Jordan Singer. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel! // title label
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var icon: UIImageView!
    var text: String!
    var field: String!
    var background_color: UIColor!
    var text_color: UIColor!
    var image: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = text
        label.textColor = text_color.colorWithAlphaComponent(0.88)
        
        icon.image = UIImage(named: image)
        
        var style = NSMutableParagraphStyle()
        style.lineSpacing = 8
        let attributes = [NSParagraphStyleAttributeName: style]
        textView.attributedText = NSAttributedString(string: field, attributes: attributes)
        textView.font = UIFont(name: "Helvetica Neue", size: 18.0)
        textView.textColor = text_color.colorWithAlphaComponent(0.64)
        
        if text_color == UIColor.blackColor() {
            button.setImage(UIImage(named: "close-black.png"), forState: nil)
        } else {
            button.setImage(UIImage(named: "close-white.png"), forState: nil)
        }
        
        
        self.view.backgroundColor = background_color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // hide status bar
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    // close button
    @IBAction func close(sender: UIButton) {
        println("close")
        self.dismissViewControllerAnimated(true, completion: {})
    }
    
    // swipe down to close
    @IBAction func userSwiped(sender: UIGestureRecognizer) {
        println("swiped")
        self.dismissViewControllerAnimated(true, completion: {})
    }

}
