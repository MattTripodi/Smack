//
//  ChannelVC.swift
//  Smack
//
//  Created by Matt Tripodi on 8/21/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60 
    }

}
