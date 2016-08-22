//
//  CustomTextField.swift
//  Animations_Breakdown
//
//  Created by Diego Aguirre on 8/22/16.
//  Copyright © 2016 home. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    
    // let's create a variable that holds the size of our frame
    var originalFrame: CGRect = CGRectZero
    
    // We'll need a Bool variable to toggle between visibility states
    var isVisible: Bool = true
    
    // And we'll have a variable that holds the width of the textfield
    var containerWidth: CGFloat = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        // we tell our var originalFrame to be the frame of the  textfield
        originalFrame = self.frame
        print(originalFrame)
    }
    
    
    // Before we can implement toggleVisiblity let's first do the removeFromScreen func and the bringOnToScreen func
    func toggleVisibility(frameWidth: CGFloat) {
        containerWidth = frameWidth
        
        if isVisible {
            removeFromScreen()
        } else {
            bringOnToScreen()
        }
        // Or use a ternary:  isVisible ? removeFromScreen() : bringOnToScreen()
        
        isVisible = !isVisible
        
    }
    
    func removeFromScreen(completion: ((readyForImage: Bool) -> Void)? = nil) {
        UIView.animateWithDuration(0.4, animations: {
            // Here we're stating that our frame should move off the screen 400 pixels to the right as well as decrease in width and become invisible
            self.frame = CGRectMake(self.originalFrame.origin.x + 400, self.originalFrame.origin.y, self.containerWidth - 16, self.originalFrame.height)
            self.alpha = 0.0
        }) { (_) in
            // After the first block runs we're going to execute this second block where we place the textfields up by 50 pixels as well as set it width to be the same of the top textfields
            self.frame = CGRectMake(self.originalFrame.origin.x, self.originalFrame.origin.y - 50, self.containerWidth - 36, self.originalFrame.height)
            completion?(readyForImage: true)
        }
    }
    
    func bringOnToScreen(completion: ((readyForImage: Bool) -> Void)? = nil) {
        UIView.animateWithDuration(0.4, animations: {
            // In here we animate our frame to go back to it's original frame and become visible
            self.frame = CGRectMake(self.originalFrame.origin.x, self.originalFrame.origin.y, self.containerWidth - 36, self.originalFrame.height)
            self.alpha = 0.3
            }) { (_) in
                // After the first block runs we set our completion to true
                completion?(readyForImage: true)
        }
    }
    
}






























