//
//  ForgotPasswordVC.swift
//  ShowMeUrTattoo
//
//  Created by Belma İbrahimbaş on 7.12.2018.
//  Copyright © 2018 Belma Ibrahimbas. All rights reserved.
//

import Foundation
import UIKit

class ForgotPasswordVC : UIViewController {
    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        setupView()
    }
    func setupView() {
        mainView.backgroundColor = UIColor.black.withAlphaComponent(0.8)
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
