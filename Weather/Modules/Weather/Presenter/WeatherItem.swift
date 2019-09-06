//
//  WeatherItem.swift
//  Weather
//
//  Created by Blind Joe Death on 21/03/2019.
//  Copyright © 2019 Codezavod. All rights reserved.
//

import Foundation

struct WeatherItem{
    var temperature: String
    var humidity: String
    var description: String
    var date: String
    var iconCode: String
    var perceivedTemperature: String
    
    static func from(weather: Weather, date: String) -> WeatherItem{
        return WeatherItem(temperature: String(weather.temperature),
                               humidity: String(weather.humidity),
                               description: weather.description,
                               date: date,
                               iconCode: weather.iconCode,
                               perceivedTemperature: String(weather.perceivedTemperature))
    }
}
