//
//  MessageCell.swift
//  Smack
//
//  Created by Matt Tripodi on 8/31/17.
//  Copyright © 2017 Matthew Tripodi. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {
	
	// Outlets
	@IBOutlet weak var userImg: CircleImage!
	@IBOutlet weak var userNameLbl: UILabel!
	@IBOutlet weak var timeStampLbl: UILabel!
	@IBOutlet weak var messageBodyLbl: UILabel!
	
    override func awakeFromNib() {
        super.awakeFromNib()
    }

	func configureCell(message: Message) {
		messageBodyLbl.text = message.message
		userNameLbl.text = message.userName
		userImg.image = UIImage(named: message.userAvatar)
		userImg.backgroundColor = UserDataService.instance.returnUIColor(components: message.userAvatarColor)
		
		guard var isoDate = message.timeStamp else { return }
		let end = isoDate.index(isoDate.endIndex, offsetBy: -5)
		isoDate = isoDate.substring(to: end)
		
		let isoFormmater = ISO8601DateFormatter()
		let chatDate = isoFormmater.date(from: isoDate.appending("Z"))
		
		let newFormmater = DateFormatter()
		newFormmater.dateFormat = "MMM d, h:mm a"
		
		if let finalDate = chatDate {
			let finalDate = newFormmater.string(from: finalDate)
			timeStampLbl.text = finalDate
		}
	}
}
