//
//  Hotel.swift
//  BestHotelApp
//
//  Created by Jessica Santana on 13/10/20.
//

import UIKit

class Hotel {
    
    public var name: String
    public var classificationStars: Int
    private var regularWeekDayFee: Double
    private var rewardedWeekDayFee: Double
    private var regularWeekendFee: Double
    private var rewardedWeekendFee: Double
    
    init(name:String, classificationStars:Int, regularWeekDayFee:Double, rewardedWeekDayFee:Double, regularWeekendFee: Double,  rewardedWeekendFee:Double ) {
        self.name = name
        self.classificationStars = classificationStars
        self.regularWeekDayFee = regularWeekDayFee
        self.rewardedWeekDayFee = rewardedWeekDayFee
        self.regularWeekendFee = regularWeekendFee
        self.rewardedWeekendFee = rewardedWeekendFee
    }
    
    public func getStayingFee(isRewarded:Bool, numberOfWeekDays: Int, numberOfWeekends: Int) -> Double {
        let doubleNumberOfWeekDays = Double(numberOfWeekDays)
        let doubleNumberOfWeekends = Double(numberOfWeekends)
        
        var weekDayFee = 0.0
        var weekendFee = 0.0
        
        if isRewarded {
            weekDayFee = rewardedWeekDayFee
            weekendFee = rewardedWeekendFee
        } else {
            weekDayFee = regularWeekDayFee
            weekendFee = regularWeekendFee
        }
        
        return (doubleNumberOfWeekends * weekendFee) + (doubleNumberOfWeekDays * weekDayFee)
    }
    
}

class ParqueDasFlores: Hotel {
    init() {
        super.init(name: "Parque das Flores", classificationStars: 3, regularWeekDayFee: 110, rewardedWeekDayFee: 80, regularWeekendFee: 90, rewardedWeekendFee: 80)
    }
}

class JardimBotanico: Hotel {
    init() {
        super.init(name: "Jardim Botânico", classificationStars: 4, regularWeekDayFee: 160, rewardedWeekDayFee: 110, regularWeekendFee: 60, rewardedWeekendFee: 50)
    }
}

class MarAtlantico: Hotel {
    init() {
        super.init(name: "Mar Atlântico", classificationStars: 5, regularWeekDayFee: 220, rewardedWeekDayFee: 100, regularWeekendFee: 150, rewardedWeekendFee: 40)
    }
}
