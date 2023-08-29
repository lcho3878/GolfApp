//
//  ProInfo.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/29.
//

import Foundation
import UIKit

class ProInfo {
    let dr: DrivingRange
    let proName: String
    let proNationality: String
    var proImage: UIImage?
    var proCareer: [String]?
    
    init(dr: DrivingRange, proName: String, proNationality: String, proImage: UIImage? = nil, proCareer: [String]? = nil) {
        self.dr = dr
        self.proName = proName
        self.proNationality = proNationality
        self.proImage = proImage
        self.proCareer = proCareer
    }
}
