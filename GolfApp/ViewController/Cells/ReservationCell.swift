//
//  ReservationCell.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/31.
//

import UIKit

class ReservationCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        label.textColor = .black
    }

}
