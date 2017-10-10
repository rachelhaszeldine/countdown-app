//
//  EventModel.swift
//  countdown-app
//
//  Created by Rachel Quartly on 12/06/2017.
//  Copyright © 2017 Rachel Quartly. All rights reserved.
//

import UIKit

struct Event {
    let title:String
    let date:Date
    let category:Category
    func dateString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        return dateFormatter.string(from: date)
    }
}

enum Category: String {
    case Home
    case Work
    case Anniversary
    case Holiday
    case Birthday
    case Other
    
    func colour() -> UIColor {
        switch self {
        case .Home:
            return UIColor.blue
        case .Work:
            return UIColor.green
        case .Anniversary:
            return UIColor.purple
        case .Holiday:
            return UIColor.orange
        case .Birthday:
            return UIColor.cyan
        case .Other:
            return UIColor.gray
        }
    }
}
