//
//  DateExtension.swift
//  Weather
//
//  Created by Blind Joe Death on 22/11/2018.
//  Copyright © 2018 Codezavod. All rights reserved.
//

import Foundation

extension Date {
    func day() -> String {
        return formatted(by: "EEEE")
    }
    
    func formatted(by format: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        dateFormatter.locale = Locale(identifier: "ru_RU")
        return dateFormatter.string(from: self)
    }
    
    func shortDate() -> String {
        switch self.day() {
        case "понедельник":
            return "пн"
        case "вторник":
            return "вт"
        case "среда":
            return "ср"
        case "четверг":
            return "чт"
        case "пятница":
            return "пн"
        case "суббота":
            return "сб"
        case "воскресенье":
            return "вс"
        default:
            return ""
        }
    }
    
    func season() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM"
        let numberOfMonth = Int(dateFormatter.string(from: self))!
        
        switch numberOfMonth {
        case 12, 1, 2:
            return "Winter"
        case 3...5:
            return "Spring"
        case 6...8:
            return "Summer"
        case 9...11:
            return "Autumn"
        default:
            return ""
        }
    }
}