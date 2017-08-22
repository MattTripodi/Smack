//
//  ChannelVC.swift
//  Smack
//
//  Created by Matt Tripodi on 8/21/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
	
	//IBOutlets
	@IBOutlet weak var loginBtn: UIButton!
	@IBAction func prepareForUnwind(segue: UIStoryboardSegue){}

    override func viewDidLoad() {
        super.viewDidLoad()
		self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60 
    }
	
	@IBAction func loginBtnPressed(_ sender: Any) {
		performSegue(withIdentifier: TO_LOGIN, sender: nil)
	}
	

}