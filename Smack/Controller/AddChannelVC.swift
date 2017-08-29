//
//  AddChannelVC.swift
//  Smack
//
//  Created by Matt Tripodi on 8/29/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {
	
	// Outlets
	@IBOutlet weak var nameTxt: UITextField!
	@IBOutlet weak var chanDesc: UITextField!
	@IBOutlet weak var bgView: UIView!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setupView()
    }
	
	@IBAction func closeModalPressed(_ sender: Any) {
		dismiss(animated: true, completion: nil)
	}
	
	@IBAction func createChannelPressed(_ sender: Any) {
		
	}
	
	func setupView() {
		let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
		bgView.addGestureRecognizer(closeTouch)
		
		nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
		chanDesc.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])

		
	}
	
	@objc func closeTap(_ recognizer: UITapGestureRecognizer) {
		dismiss(animated: true, completion: nil)
	}
	
}