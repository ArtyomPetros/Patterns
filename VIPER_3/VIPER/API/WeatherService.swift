//
//  WeatherService.swift
//  VIPER
//
//  Created by Артём Петросян on 19.11.2023.
//

import Foundation

class WeatherService{
    func getWeather(complition: @escaping (Int) -> Void){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            let temperature = Int.random(in: -30...30)
            complition(temperature)
        }
    }
}
