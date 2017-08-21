//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Matt Tripodi on 8/21/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
	
	@IBAction func closePressed(_ sender: Any) {
		performSegue(withIdentifier: UNWIND, sender: nil)
	}
	

}
