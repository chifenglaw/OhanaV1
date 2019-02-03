//
//  EventDetailVC.swift
//  OhanaV1
//
//  Created by Chifeng Law on 1/7/19.
//  Copyright © 2019 Chifeng Law. All rights reserved.
//

import UIKit
import SafariServices

class EventDetailVC: UIViewController {
    
    var eventID = 0
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var eventDateLabel: UILabel!
    @IBOutlet weak var eventTicketLabel: UILabel!
    @IBOutlet weak var eventLocationLabel: UILabel!
    @IBOutlet weak var eventDetailHeadingLabel: UILabel!
    @IBOutlet weak var eventDetailLabel: UILabel!
    
    
    @IBAction func moreDetailsButtonTapped(_ sender: UIButton) {
        
        let url = "https://lanternlightfestival.com/"
        sender.setTitle(url, for: .normal)
        sender.contentHorizontalAlignment = .left
        showSafariVC(for: url)
    }
    
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()

        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        eventImage.image = UIImage(named: "latern_festival")!
        eventDateLabel.text = "Nov 30, 2018 - Jan 20, 2019"
        eventLocationLabel.text = "Alameda County Fairgrounds, Pleasanton, CA"
        // eventTicketLabel.text = "https://lanternlightfestival.com/"
        eventDetailHeadingLabel.text = "Details"
        eventDetailLabel.text = "Join us for a spectacular evening of dazzing lights, colors, shapes, and themes. The Lantern Light festival is a celebration of Chinese culture featuring massive handmade lanterns, inspiring performances, and children's activities"
    }
    
}
