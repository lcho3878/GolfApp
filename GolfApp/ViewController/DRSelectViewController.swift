//
//  DRSelectViewController.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/29.
//

import UIKit

class DRSelectViewController: UIViewController {
    @IBOutlet weak var titleLogo: UILabel!
    @IBOutlet weak var drCollectionView: UICollectionView!
    @IBOutlet weak var proCollectionView: UICollectionView!
    var city: String?
    var proCount: Int = 0
    var proList: [ProInfo] = []
    var pro: ProInfo?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLogo.text = "Select your driving range at \(city!)"
    }
    
}

extension DRSelectViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == drCollectionView{
            return drs[city!]!.count
        }
        else {
            return proList.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == drCollectionView{
            guard let cell = drCollectionView.dequeueReusableCell(withReuseIdentifier: "DrivingRangeCell", for: indexPath) as? DrivingRangeCell else { return UICollectionViewCell() }
            let drivingRange = drs[city!]![indexPath.row]
            cell.SetupUI(drivingRange)
            return cell
        }
        else {
            guard let cell = proCollectionView.dequeueReusableCell(withReuseIdentifier: "ProCell", for: indexPath) as? ProCell else { return UICollectionViewCell() }
            let pro = proList[indexPath.row]
            cell.SetupUI(pro)
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == drCollectionView {
            proList = []
            let drivingRange = drs[city!]![indexPath.row]
            for i in 0..<pros.count {
                if pros[i].dr.drName == drivingRange.drName {
                    proList.append(pros[i])
                }
            }
            proCollectionView.reloadSections(IndexSet(0...0))
        }
        else {
            pro = proList[indexPath.row]
            performSegue(withIdentifier: "ProDetail", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ProDetail" {
            let detailViewController = segue.destination as! DetailViewController
            detailViewController.pro = pro
        }
    }
    
    
    
}
