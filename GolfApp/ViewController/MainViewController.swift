//
//  ViewController.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/29.
//

import UIKit

class MainViewController: UIViewController {
    var citySelection: City?
    var pro: ProInfo?
    @IBOutlet weak var proLabel: UILabel!
    
    @IBOutlet weak var firstCollectionView: UICollectionView!
    @IBOutlet weak var secondCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        citySelection = nil
        firstCollectionView.reloadData()
        if modeSetting == .light {
            proLabel.textColor = .black
        }
        else {
            proLabel.textColor = .white
        }
    }

}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == firstCollectionView {
            return cities.count
        }
        
        else {
            return recommendedPro.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == firstCollectionView {
                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CityCell", for: indexPath) as? CityCell else { return UICollectionViewCell() }
                let city = cities[indexPath.row]
                cell.SetupUI(city)
                return cell
        }
        else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendedProCell", for: indexPath) as? RecommendedProCell else { return UICollectionViewCell() }
            let pro = recommendedPro[indexPath.row]
            cell.SetupUI(pro)
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //아이템 선택시 나오는 함수
        if collectionView == firstCollectionView{
            citySelection = cities[indexPath.row]
            performSegue(withIdentifier: "CityToDR", sender: nil)
        }
        else {
            pro = recommendedPro[indexPath.row]
            performSegue(withIdentifier: "MainToDetail", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CityToDR" {
            let drSelectViewController = segue.destination as! DRSelectViewController
            drSelectViewController.city = citySelection?.cityName
        }
        else if segue.identifier == "MainToDetail" {
            let detailViewController = segue.destination as! DetailViewController
            detailViewController.pro = pro
        }
    }
    
}

