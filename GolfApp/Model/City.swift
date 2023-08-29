//
//  City.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/29.
//

import Foundation
import UIKit

class City: Equatable {
    static func == (lhs: City, rhs: City) -> Bool {
        return lhs.cityName == rhs.cityName
    }
    
    let cityName: String
    var cityImage: UIImage?
    
    init(cityName: String, cityImage: UIImage? = nil) {
        self.cityName = cityName
        self.cityImage = cityImage
    }
}
