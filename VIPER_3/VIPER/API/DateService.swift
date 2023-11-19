//
//  DateService.swift
//  VIPER
//
//  Created by Артём Петросян on 19.11.2023.
//

import Foundation

class DateService{
    func getDate(complition: @escaping (Date) -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now()+1){
            complition(Date())
        }
    }
}
