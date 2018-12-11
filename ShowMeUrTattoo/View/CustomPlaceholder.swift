//
//  CustomPlaceholder.swift
//  ShowMeUrTattoo
//
//  Created by Belma İbrahimbaş on 6.12.2018.
//  Copyright © 2018 Belma Ibrahimbas. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class CustomPlaceholder : UITextField {
    @IBInspectable var placeholderColor: UIColor = UIColor.white {
        didSet {
            self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) ])
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    
    func setupView() {
        self.attributedPlaceholder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedString.Key.foregroundColor: placeholderColor  ])
    }
}
