//
//  ProCell.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/29.
//

import UIKit

class ProCell: UICollectionViewCell {
    @IBOutlet weak var proName: UILabel!
    @IBOutlet weak var proImage: UIImageView!
    
    func SetupUI (_ pro: ProInfo) {
        proName.text = pro.proName
        proImage.image = pro.proImage ?? UIImage(named: "noimage")
        proImage.layer.cornerRadius = proImage.frame.size.width / 2
        proImage.clipsToBounds = true
    }
    
}
