//
//  ViewController.swift
//  Jupiter
//
//  Created by James Rochabrun on 3/16/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

//solved with protocols
class DataEntryTextfield: UITextField, Jitterable  {}
class LoginButton: UIButton, Jitterable {}
class FlashingLabel: UILabel, Flashable {}

class LoginVC: UIViewController {
    @IBOutlet weak var emailTextField: DataEntryTextfield!
    @IBOutlet weak var errorLabel: FlashingLabel!
    @IBOutlet weak var passwordTextfield: DataEntryTextfield!
    @IBOutlet weak var loginbutton: LoginButton!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func LoginWasPressed(_ sender: Any) {
        
        emailTextField.jitter()
        passwordTextfield.jitter()
        loginbutton.jitter()
        errorLabel.flash()
        imageView.jitter()
    }
}

///solved with an extension
extension UIView {
    func jitter() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint.init(x: self.center.x - 5.0, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint.init(x: self.center.x + 5.0, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
}
