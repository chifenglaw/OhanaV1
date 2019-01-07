//
//  Event.swift
//  OhanaV1
//
//  Created by Chifeng Law on 1/5/19.
//  Copyright © 2019 Chifeng Law. All rights reserved.
//

import Foundation
import UIKit

class Event {
    var image: UIImage
    var name: String
    var date: String
    var address: String
    
    init(image: UIImage,
         name: String,
         date: String,
         address: String) {
        self.image = image
        self.name = name
        self.date = date
        self.address = address
    }
}
