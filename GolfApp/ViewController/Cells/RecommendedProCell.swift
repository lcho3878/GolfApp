//
//  RecommendedProCellCollectionViewCell.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/29.
//

import UIKit

class RecommendedProCell: UICollectionViewCell {
    
    @IBOutlet weak var proName: UILabel!
    @IBOutlet weak var proImage: UIImageView!
    @IBOutlet weak var proCareer: UITextView!
    
    func SetupUI (_ pro: ProInfo) {
        proName.text = pro.proName + " / " + pro.proNationality
        proImage.image = pro.proImage
        proCareer.text = MakeCareerText(pro)
    }
    
    func MakeCareerText(_ pro: ProInfo) -> String {
        var result = ""
        for i in 0..<(pro.proCareer?.count ?? 0) {
            result += (pro.proCareer?[i] ?? "")+"\n"
        }
        return result
    }
}
