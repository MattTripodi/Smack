//
//  CircleImage.swift
//  Smack
//
//  Created by Matt Tripodi on 8/28/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {
	
	override func awakeFromNib() {
		super.awakeFromNib()
		setupView()
	}
	
	func setupView() {
		self.layer.cornerRadius = self.frame.width / 2
		self.clipsToBounds = true
	}
	
	override func prepareForInterfaceBuilder() {
		super.prepareForInterfaceBuilder()
		setupView()
	}


}
