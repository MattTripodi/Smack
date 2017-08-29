//
//  ProfileVC.swift
//  Smack
//
//  Created by Matt Tripodi on 8/29/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
	
	// Outlets
	@IBOutlet weak var profileImg: UIImageView!
	@IBOutlet weak var userName: UILabel!
	@IBOutlet weak var userEmail: UILabel!
	@IBOutlet weak var bgView: UIView!
	
	

    override func viewDidLoad() {
        super.viewDidLoad()
		setupView()

    }

	@IBAction func closeModelPressed(_ sender: Any) {
		self.dismiss(animated: true, completion: nil)
	}
	
	@IBAction func logoutPressed(_ sender: Any) {
		UserDataService.instance.logoutUser()
		NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
		dismiss(animated: true, completion: nil)
	}
	
	func setupView() {
		userName.text = UserDataService.instance.name
		userEmail.text = UserDataService.instance.email
		profileImg.image = UIImage(named: UserDataService.instance.avatarName)
		profileImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
		
		let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap(_:)))
		bgView.addGestureRecognizer(closeTouch)
	}
	
	@objc func closeTap(_ recognizer: UITapGestureRecognizer) {
		dismiss(animated: true, completion: nil)
	}

	
	
	
	
}
