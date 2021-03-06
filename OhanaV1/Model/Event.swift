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
    var id: Int
    var image: UIImage
    var name: String
    var date: String
    var address: String
    var detail: String
    var city: String

    
    init(id: Int, image: UIImage, name: String,
         date: String, city: String,
         address: String, detail: String) {
        self.id = id
        self.image = image
        self.name = name
        self.date = date
        self.city = city
        self.address = address
        self.detail = detail
    }
}
