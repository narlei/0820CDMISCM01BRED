//
//  Extensions.swift
//  BestHotelApp
//
//  Created by Jessica Santana on 14/10/20.
//

import UIKit

extension Calendar {
    static let current = Calendar.current
}


extension Date {
    var isDateInWeekend: Bool {
        return Calendar.current.isDateInWeekend(self)
    }
    var tomorrow: Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: noon) ?? Date()
    }
    var noon: Date {
        return Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: self) ?? Date()
    }
}
