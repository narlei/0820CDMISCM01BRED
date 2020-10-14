//
//  ViewController.swift
//  BestHotelApp
//
//  Created by Jessica Santana on 13/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var checkInDatePicker: UIDatePicker!
    @IBOutlet weak var checkOutDatePicker: UIDatePicker!
    @IBOutlet weak var isRewardedClientSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Button Actions

    
    @IBAction func bestHotelActionButton(_ sender: Any) {
        let checkinDate = checkInDatePicker.date
        let checkoutDate = checkOutDatePicker.date
        let isRewardedCliente = isRewardedClientSwitch.isOn
        
        findCheaperHotelForPeriod(checkin: checkinDate, checkout: checkoutDate, isRewarded: isRewardedCliente)
        
    }
    
    
    
    // MARK: - Logic Methods
    
    private func findCheaperHotelForPeriod(checkin:Date, checkout:Date, isRewarded: Bool){
        var valueHotels = [Double]()
        
        let days = countDays(from: checkin, to: checkout)
        
        let hotelMarAtlantico = MarAtlantico()
        let hotelJardimBotanico = JardimBotanico()
        let hotelParqueDasFlores = ParqueDasFlores()
        
        let stayingFeeOfMarAtlantico = hotelMarAtlantico.getStayingFee(isRewarded: isRewarded, numberOfWeekDays: days.workingDays, numberOfWeekends: days.weekendDays)
        
        let stayingFeeOfJardimBotanico = hotelJardimBotanico.getStayingFee(isRewarded: isRewarded, numberOfWeekDays: days.workingDays, numberOfWeekends: days.weekendDays)
        
        let stayingFeeOfParqueDasFlores = hotelParqueDasFlores.getStayingFee(isRewarded: isRewarded, numberOfWeekDays: days.workingDays, numberOfWeekends: days.weekendDays)
        
        //        let dicNameValueHotels = [hotelMarAtlantico.name:stayingFeeOfMarAtlantico, hotelJardimBotanico.name: stayingFeeOfJardimBotanico, hotelParqueDasFlores.name:stayingFeeOfParqueDasFlores]
        
        valueHotels.append(stayingFeeOfMarAtlantico)
        valueHotels.append(stayingFeeOfJardimBotanico)
        valueHotels.append(stayingFeeOfParqueDasFlores)
        
//        print("Valor dos hoteis: ", dicNameValueHotels)
        
        let firstMinFee = valueHotels.min() ?? 0.0
        
        let hotelIndex = valueHotels.firstIndex(where: {$0 == firstMinFee})
        
        var hotelName = ""
        
        if hotelIndex == 0 {
            hotelName = "Mar Atlântico"
        }
        
        if hotelIndex == 1 {
            hotelName = "Jardim Botânico"
        }
        
        if hotelIndex == 2 {
            hotelName = "Parque das Flores"
        }
        
        print("-----------------------------------------------")
        print("O hotel mais barato é: ", hotelName)
        print("O valor é: ", firstMinFee)
        print("-----------------------------------------------")
    }
    
    private func countDays(from start: Date, to end: Date) -> (weekendDays: Int, workingDays: Int) {
        guard start < end else { return (0,0) }
        
        var weekendDays = 0
        var workingDays = 0
        
        var date = start.noon
        
        while date < end.tomorrow {
            if date.isDateInWeekend {
                weekendDays +=  1
            } else {
                workingDays += 1
            }
            date = date.tomorrow
        }
        return (weekendDays, workingDays)
    }
    
    
}

