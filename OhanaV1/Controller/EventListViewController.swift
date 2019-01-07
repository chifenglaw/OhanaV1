//
//  EventListViewController.swift
//  OhanaV1
//
//  Created by Chifeng Law on 1/5/19.
//  Copyright © 2019 Chifeng Law. All rights reserved.
//

import UIKit

class EventListViewController: UIViewController {
    var events: [Event] = []

   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        events = loadEvents()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func loadEvents() -> [Event] {
        let event1 = Event(
            image: UIImage(named: "latern_festival")!,
            name: "latern festival",
            date: "Jan 11 Fri 5:00PM - 11:00PM",
            address: "Alameda County Fairgrounds, Pleasanton, CA"
        )
        return [event1]
    }
}


extension EventListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let event = events[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell") as! EventCell
        
        cell.setEvent(event: event)
        
        return cell
    }
    
    
}
