//
//  LoginVC.swift
//  Smack
//
//  Created by Matt Tripodi on 8/21/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
	
	//Outlets
	@IBOutlet weak var userNameTxr: UITextField!
	@IBOutlet weak var passwordTxt: UITextField!
	@IBOutlet weak var spinner: UIActivityIndicatorView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setupView()
    }
	
	@IBAction func loginPressed(_ sender: Any) {
		spinner.isHidden = false
		spinner.startAnimating()
		
		guard let email = userNameTxr.text, userNameTxr.text != "" else { return }
		guard let pass = passwordTxt.text, passwordTxt.text != "" else { return }
		
		AuthService.instance.loginUser(email: email, password: pass) { (success) in
			if success {
				AuthService.instance.findUserByEmail(completion: { (success) in
					if success {
						NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
						self.spinner.isHidden = true
						self.spinner.stopAnimating()
						self.dismiss(animated: true, completion: nil)
					}
				})
			}
		}
	}
	
	
	@IBAction func closePressed(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
	
	@IBAction func createAccountBtnPressed(_ sender: Any) {
		performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
	}
	
	func setupView() {
		spinner.isHidden = true
		userNameTxr.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
		passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
	}
	

}
