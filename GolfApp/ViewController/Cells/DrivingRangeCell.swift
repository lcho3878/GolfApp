//
//  DrivingRangeCellCollectionViewCell.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/29.
//

import UIKit

class DrivingRangeCell: UICollectionViewCell {
    @IBOutlet weak var drivingRangeName: UILabel!
    @IBOutlet weak var drivingRangeImage: UIImageView!
    
    func SetupUI(_ drivingRange: DrivingRange) {
        drivingRangeName.text = drivingRange.drName
        drivingRangeImage.image = drivingRange.drImage
    }
    
}
