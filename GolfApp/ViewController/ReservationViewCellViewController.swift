//
//  ReservationViewCellViewController.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/30.
//

import UIKit

class ReservationViewCellViewController: UIViewController {
    var pro: ProInfo!
    @IBOutlet weak var proImage: UIImageView!
    @IBOutlet weak var proInfo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        proImage.image = pro.proImage
        proInfo.text = pro.proName + " / " + pro.proNationality
    }

}
