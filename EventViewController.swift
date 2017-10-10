//
//  EventViewController.swift
//  countdown-app
//
//  Created by Rachel Quartly on 28/07/2017.
//  Copyright © 2017 Rachel Quartly. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {
    
    @IBOutlet var eventName: UILabel!
    @IBOutlet var eventDate: UILabel!
    @IBOutlet var eventImage: UIImageView!
    @IBAction func cancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var event: Event?
    
    func configure(with event: Event) {
        self.event = event
    }

    @IBAction func didTapActivity(_ sender: UIBarButtonItem) {
        guard let eventText = eventName.text else {
            return
        }
        guard let eventTime = eventDate.text else {
            return
        }
        let shareEvent = "\(eventText) is happening on \(eventTime)!"
        let activityView = UIActivityViewController(activityItems: [shareEvent], applicationActivities: nil)
        present(activityView, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventName.text = event?.title
        eventName.textColor = event?.category.colour()
        eventName.font = UIFont(name: "Noteworthy", size: CGFloat(24))
        eventDate.text = event?.dateString()
        
        self.title = event?.title
    }
}
