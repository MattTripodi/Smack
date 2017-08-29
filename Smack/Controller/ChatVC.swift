//
//  ChatVC.swift
//  Smack
//
//  Created by Matt Tripodi on 8/21/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
	
	//IBOutlets
	@IBOutlet weak var menuBtn: UIButton!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
		self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
		self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
		
		if AuthService.instance.isLoggedIn {
			AuthService.instance.findUserByEmail(completion: { (success) in
				NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
			})
		}
    }

}
