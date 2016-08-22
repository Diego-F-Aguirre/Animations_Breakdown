//
//  CustomImageView.swift
//  Animations_Breakdown
//
//  Created by Diego Aguirre on 8/22/16.
//  Copyright © 2016 home. All rights reserved.
//

import UIKit

// State IBDesignable to be able to update the storyboard to reflect visual changes
@IBDesignable
class CustomImageView: UIImageView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    @IBInspectable var cornerRadius: CGFloat = 0 {
        // Upon our cornerRadius being set we're going to call the setupView function to round our image
        didSet {
            setupView()
        }
    }
    
    // Need to call this when IBDesignable objects are implemented/expected to update Interface Builder
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    
    // This is going to setup our view to be rounded.
    func setupView() {
        self.layer.cornerRadius = cornerRadius
        self.layer.masksToBounds = true
    }
}
