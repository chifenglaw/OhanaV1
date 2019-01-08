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
    var eventID = 0

    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func mapButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "eventMap", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        events = loadEvents()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func loadEvents() -> [Event] {
        let event1 = Event(
            id: 1,
            image: UIImage(named: "latern_festival")!,
            name: "Alameda Latern Light Festival",
            date: "Jan 11 Fri 5:00PM - 11:00PM",
            address: "Alameda County Fairgrounds, Pleasanton, CA",
            detail: ""
        )
        
        let event2 = Event(
            id: 2,
            image: UIImage(named: "cruise")!,
            name: "2-Hour Twilight Cruise",
            date: "Mar 23 Sat 5:30PM – 7:30PM",
            address: "San Francisco, California",
            detail: ""
        )
        
        let event3 = Event(
            id: 3,
            image: UIImage(named: "chocolate")!,
            name: "Chocolate Festival",
            date: "March 30 Sat 10AM – 5:30PM",
            address: "1199 9th Ave, San Francisco, California 94122",
            detail: ""
        )
        
//        https://www.danville.ca.gov/Calendar.aspx?EID=358
        
        let event4 = Event(
            id: 4,
            image: UIImage(named: "preschool")!,
            name: "Preschool Performance Series",
            date: "March 1 Friday",
            address: "233 Front Street, Danville, CA 94526",
            detail: ""
        )
        
        let event5 = Event(
            id: 5,
            image: UIImage(named: "asian_art")!,
            name: "Asian Art Museum Free Admission Day",
            date: "February 3 Sunday",
            address: "200 Larkin Street San Francisco, CA",
            detail: ""
        )
        
        // https://patch.com/california/walnutcreek/calendar/event/20190119/475530/diablo-ballet-great-music-from-great-ballets
        let event6 = Event(
            id: 6,
            image: UIImage(named: "diablo_ballet")!,
            name: "Great Music from Great Ballets",
            date: "Jan 19 Sat 7:00pm",
            address: "Steinway Piano Galley in Walnut Creek",
            detail: "1605 Bonanza St, Walnut Creek, CA 94596"
        )

        let event7 = Event(
            id: 7,
            image: UIImage(named: "san_ramon")!,
            name: "FUN ON THE FARM! OLD FASHIONED GAMES",
            date: "February 23 11:00AM - 2:00PM",
            address: "Forest Home Farms Historic Park",
            detail: ""
        )
        
        // https://www.roaringcamp.com/dowtFAQ
        let event8 = Event(
            id: 8,
            image: UIImage(named: "thomas")!,
            name: "Day Out With Thomas",
            date: "Jul 26 - Aug 4",
            address: "5401 Graham Hill Road, Felton, CA 95018",
            detail: ""
        )

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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentCell = tableView.cellForRow(at: indexPath)! as! EventCell
        eventID = Int(currentCell.eventID.text!)!
//        performSegue(withIdentifier: "eventDetail", sender: self)
//        print("performe segue for id: \(eventID)")
    }
    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        if identifier == "eventDetail" {
////            performSegue(withIdentifier: "eventDetail", sender: self)
//        }
//
//        return true
//    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "eventDetail" {
            let eventDetailVC = segue.destination as! EventDetailVC
            if let indexPath = tableView.indexPathForSelectedRow {
                eventDetailVC.eventID = eventID
            }
        } else if segue.identifier == "eventMap" {
            let evengMapVC = segue.destination as! EventMapViewController
        }
        print("prepare segue for id: \(eventID)")
    }
    
}
