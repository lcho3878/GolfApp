//
//  Dummy.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/29.
//

import Foundation
import UIKit

var seoul = City(cityName: "seoul", cityImage: UIImage(named: "seoul"))
var busan = City(cityName: "busan", cityImage: UIImage(named: "busan"))

var dr1 = DrivingRange(city: seoul, drName: "SGolf1", drImage: UIImage(named: "golf1"))
var dr2 = DrivingRange(city: busan, drName: "BGolf", drImage: UIImage(named: "golf2"))
var dr3 = DrivingRange(city: seoul, drName: "SGolf2", drImage: UIImage(named: "golf3"))

var pro1 = ProInfo(dr: dr1, proName: "DH.Kim", proNationality: "KR", proImage: UIImage(named: "pigeon"), proCareer: ["PGA 가고싶음", "동네골프대장"])
var pro2 = ProInfo(dr: dr1, proName: "CH.Lee", proNationality: "KR", proImage: UIImage(named: "cute"), proCareer: ["스크린 싱글해봄", "이글도 해봄", ])
var pro3 = ProInfo(dr: dr2, proName: "JH.Song", proNationality: "US")
var pro4 = ProInfo(dr: dr3, proName: "YB.Jeong", proNationality: "MAL")
var pro5 = ProInfo(dr: dr2, proName: "JM.Han", proNationality: "KR")

var cities: [City] = [seoul, busan]
var drs: [String : [DrivingRange]] = ["seoul" : [dr1, dr3], "busan" : [dr2]]
var pros: [ProInfo] = [pro1, pro2, pro3, pro4, pro5]
