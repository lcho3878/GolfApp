//
//  DetailViewController.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/29.
//

import UIKit

class DetailViewController: UIViewController {
    var pro: ProInfo!
    @IBOutlet weak var proImage: UIImageView!
    @IBOutlet weak var proName: UILabel!
    @IBOutlet weak var proNationality: UILabel!
    @IBOutlet weak var proCareer: UITextView!
    @IBOutlet weak var titleLogo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetupUI(pro)
        print(pro.proName)
    }
    
    func SetupUI (_ pro: ProInfo) {
        proImage.image = pro.proImage
        proName.text = pro.proName
        proNationality.text = pro.proNationality
        proCareer.text = MakeCareerText(pro)
        titleLogo.text = pro.dr.city.cityName + " > " + pro.dr.drName
    }
    
    func MakeCareerText(_ pro: ProInfo) -> String {
        var result = ""
        for i in 0..<(pro.proCareer?.count ?? 0) {
            result += (pro.proCareer?[i] ?? "")+"\n"
        }
        return result
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailToReservation" {
            let reservationViewController = segue.destination as! ReservationViewCellViewController
            reservationViewController.pro = pro
        }
    }
}
