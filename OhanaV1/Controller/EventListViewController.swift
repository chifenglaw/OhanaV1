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
            name: "Alameda Latern Light Festival",
            date: "Jan 11 Fri 5:00PM - 11:00PM",
            address: "Alameda County Fairgrounds, Pleasanton, CA"
        )
        
        let event2 = Event(
            image: UIImage(named: "cruise")!,
            name: "2-Hour Twilight Cruise",
            date: "Saturday, March 23, 2019 at 5:30 PM – 7:30 PM",
            address: "San Francisco, California"
        )
        
        let event3 = Event(
            image: UIImage(named: "chocolate")!,
            name: "Chocolate Festival",
            date: "Saturday, March 30, 2019 at 10 AM – 5:30 PM",
            address: "1199 9th Ave, San Francisco, California 94122"
        )
        
//        https://www.danville.ca.gov/Calendar.aspx?EID=358
        
        let event4 = Event(
            image: UIImage(named: "preschool")!,
            name: "Preschool Performance Series",
            date: "Friday, March 1, 2019",
            address: "233 Front Street, Danville, CA 94526"
        )
        
        let event5 = Event(
            image: UIImage(named: "asian_art")!,
            name: "Asian Art Museum Free Admission Day",
            date: "Sunday, February 3, 2019 -",
            address: "Asian Art Museum | 200 Larkin Street San Francisco, CA"
        )
        
        // https://patch.com/california/walnutcreek/calendar/event/20190119/475530/diablo-ballet-great-music-from-great-ballets
        let event6 = Event(
            image: UIImage(named: "diablo_ballet")!,
            name: "Great Music from Great Ballets",
            date: "Jan 19, Saturday at 7:00pm",
            address: "Steinway Piano Galley in Walnut Creek"
        )

        let event7 = Event(
            image: UIImage(named: "san_ramon")!,
            name: "FUN ON THE FARM! OLD FASHIONED GAMES ",
            date: "February 23 2019 11:00 AM to 2:00 PM",
            address: "Forest Home Farms Historic Park"
        )
        
        // https://www.roaringcamp.com/dowtFAQ
        let event8 = Event(
            image: UIImage(named: "thomas")!,
            name: "Day Out With Thomas",
            date: "Fri Jul 26 9:00AM - Sun Aug 4",
            address: "5401 Graham Hill Road, Felton, CA 95018"
        )
//
//        let event7 = Event(
//            image: UIImage(named: "preschool")!,
//            name: "",
//            date: "",
//            address: ""
//        )
        
        return [event1, event2, event3, event4, event5, event6, event7, event8]
    }
}


extension EventListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let event = events[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell") as! EventCell
        
        cell.updateCellUI(event: event)
        
        return cell
    }
    
    
}
