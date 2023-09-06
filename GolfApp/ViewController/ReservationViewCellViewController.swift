//
//  ReservationViewCellViewController.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/30.
//

import UIKit

class ReservationViewCellViewController: UIViewController {
    var pro: ProInfo!
    var dateList: [Date] = []
    var index: Int!
    @IBOutlet weak var dateLabel2: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateCollectionView: UICollectionView!
    @IBOutlet weak var proImage: UIImageView!
    @IBOutlet weak var proInfo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        proImage.image = pro.proImage
        proInfo.text = pro.proName + " / " + pro.proNationality
        dateLabel2.text = Date().toString("M월 d일")
//        let minDate = Date()
        let minDate = datePicker.calendar.date(byAdding: .day, value: -14, to: Date())
        let maxDate = datePicker.calendar.date(byAdding: .day, value: 14, to: Date())
        datePicker.minimumDate = minDate
        datePicker.maximumDate = maxDate
        datePicker.addTarget(self, action: #selector(DateSelect), for: .valueChanged)
        makeTimeList(Date())
        
    }
    
    @objc func DateSelect(_ sender: UIDatePicker) {
        index = nil
        dateLabel2.text = sender.date.toString("M월 d일")
        dateCollectionView.reloadData()
        makeTimeList(sender.date)
    }
    
    func makeTimeList (_ selectDay: Date) {
        dateList = []
        let calendar = Calendar(identifier: .gregorian)
        var component = DateComponents()
        component.minute = 30
        let currentDate = selectDay
        var time = calendar.date(bySettingHour: 09, minute: 00, second: 00, of: currentDate)!
        dateList.append(time)
        for _ in 0..<20 {
            time = calendar.date(byAdding: component, to: time)!
            dateList.append(time)
        }
    }
    
    @IBAction func Reservation(_ sender: Any) {
        if index != nil {
            if pro.reservationTime.contains(dateList[index!]) || Date() > dateList[index!] {
                ShowAlert("해당 시간은 예약이 불가능합니다.")
            }
            else{
                pro.reservationTime.append(dateList[index!])
                dateCollectionView.reloadData()
                ShowAlert("예약이 완료되었습니다.")
            }
        }
        else {
            ShowAlert("시간을 선택해주세요.")
        }
    }
    
    func ShowAlert (_ message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel)
        alert.addAction(ok)
        present(alert, animated: true)
    }

}

extension ReservationViewCellViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dateList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReservationCell", for: indexPath) as? ReservationCell else { return UICollectionViewCell()}
        cell.timeLabel.text = dateList[indexPath.row].toString("a h:mm")
        if pro.reservationTime.contains(dateList[indexPath.row]) || Date() > dateList[indexPath.row] {
            cell.backgroundColor = .gray
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        index = indexPath.row
    }
    
    
}

//extension ReservationViewCellViewController: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return dateList.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReservationCell", for: indexPath) as? ReservationCell else { return UITableViewCell() }
//        cell.label.text = dateList[indexPath.row].toString("a h:mm")
//        if pro.reservationTime.contains(dateList[indexPath.row]) {
//            cell.label.text! += " - 예약됨"
//            cell.label.textColor = .red
//            cell.isUserInteractionEnabled = false
//        }
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "\(datePicker.date.toString("M월 d일"))"
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        index = indexPath.row
//    }
//}


