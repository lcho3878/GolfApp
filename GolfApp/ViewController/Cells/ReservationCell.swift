//
//  ReservationCell.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/31.
//

import UIKit

class ReservationCell: UICollectionViewCell {

    @IBOutlet weak var timeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func prepareForReuse() {
        backgroundColor = .systemGreen
    }
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                layer.borderWidth = 1.0
                layer.borderColor = UIColor.red.cgColor
            }
            else {
                layer.borderWidth = 0.0
            }
        }
    }

}
