//
//  EventDetailVC.swift
//  OhanaV1
//
//  Created by Chifeng Law on 1/7/19.
//  Copyright © 2019 Chifeng Law. All rights reserved.
//

import UIKit

class EventDetailVC: UIViewController {
    
    var eventID = 0
    @IBOutlet weak var eventImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        eventImage.image = UIImage(named: "latern_festival")!
    }
    
}
