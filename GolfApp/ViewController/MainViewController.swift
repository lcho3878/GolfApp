//
//  ViewController.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/29.
//

import UIKit

class MainViewController: UIViewController {
    var citySelection: City?
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        citySelection = nil
        collectionView.reloadData()
    }

}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if citySelection == nil{
            return cities.count
        }
        else {
            return drs[citySelection!.cityName]!.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if citySelection == nil {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CityCell", for: indexPath) as? CityCell else { return UICollectionViewCell() }
            let city = cities[indexPath.row]
            cell.SetupUI(city)
            return cell
        }
        else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DrivingRangeCell", for: indexPath) as? DrivingRangeCell else { return UICollectionViewCell() }
            let drivingRange = drs[citySelection!.cityName]![indexPath.row]
            cell.SetupUI(drivingRange)
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //아이템 선택시 나오는 함수
        if citySelection == nil {
            citySelection = cities[indexPath.row]
            collectionView.reloadSections(IndexSet(0...0))
        }
        else {
            print(drs[citySelection!.cityName]![indexPath.row].drName)
        }
    }
    
    
}

