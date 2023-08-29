//
//  DrivingRange.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/29.
//

import Foundation
import UIKit

class DrivingRange {
    let city: City
    let drName: String
    let drImage: UIImage?
    
    init(city: City, drName: String, drImage: UIImage? = nil) {
        self.city = city
        self.drName = drName
        self.drImage = drImage
    }
}
