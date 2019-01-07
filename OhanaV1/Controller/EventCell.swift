//
//  EventCell.swift
//  OhanaV1
//
//  Created by Chifeng Law on 1/6/19.
//  Copyright © 2019 Chifeng Law. All rights reserved.
//

import UIKit

class EventCell: UITableViewCell {

    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var eventDate: UILabel!
    @IBOutlet weak var eventAddress: UILabel!
    
    func updateCellUI(event: Event) {
        eventImageView.image = event.image
        eventNameLabel.text = event.name
        eventDate.text = event.date
        eventAddress.text = event.address
    }
}
