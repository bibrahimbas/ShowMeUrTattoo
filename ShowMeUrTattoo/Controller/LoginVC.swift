//
//  LoginVC.swift
//  ShowMeUrTattoo
//
//  Created by Belma İbrahimbaş on 6.12.2018.
//  Copyright © 2018 Belma Ibrahimbas. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        backgroundImageAnimate()
    }

    func setupView() {
        mainView.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
       
    }
    
    func backgroundImageAnimate() {
        var imageArray = [UIImage]()
        var counter = 1
        while let image = UIImage(named: "loginImg\(counter)") {
            imageArray.append(image)
            counter += 1
        }
        
        UIView.animate(withDuration: 0.2) {
            self.backgroundImage.animationImages = imageArray
            self.backgroundImage.animationDuration = 25.0
            self.backgroundImage.animationRepeatCount = 0
            self.backgroundImage.startAnimating()
        }
        
    }

}

