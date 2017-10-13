//
//  CountdownCell.swift
//  countdown-app
//
//  Created by Rachel Quartly on 29/06/2017.
//  Copyright © 2017 Rachel Quartly. All rights reserved.
//

import UIKit

class CountdownCell: UITableViewCell {

    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventDate: UILabel!
    @IBOutlet weak var daysLeft: UILabel!
    
    
    func configure(with event: Event) {
    
        eventName.text = event.title
        eventName.textColor = event.category.colour()
        //eventName.font = UIFont(name: "Noteworthy", size: CGFloat(24))
        eventDate.text = event.dateString()
        
        let calendar = NSCalendar.current
        let startDate = calendar.startOfDay(for: event.date)
        let currentDate: Date = calendar.startOfDay(for: Date())
        let components = calendar.dateComponents([.day], from: currentDate, to: startDate)
        guard let numberOfDays = components.day else { return }
        //let postscript = numberOfDays == 1 ? "day to go!" : "days to go! 😱"
        daysLeft.text = "\(numberOfDays)" //\(postscript)"
    }

      override func awakeFromNib() {
        super.awakeFromNib()
        daysLeft.text = "4"
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
