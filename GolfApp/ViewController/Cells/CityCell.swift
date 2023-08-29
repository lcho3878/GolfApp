//
//  CityCell.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/29.
//

import UIKit

class CityCell: UICollectionViewCell {
    @IBOutlet weak var cityName: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    
    func SetupUI (_ city: City) {
        cityName.text = city.cityName
        cityImage.image = city.cityImage
    }
}
