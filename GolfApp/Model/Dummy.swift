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

var pro1 = ProInfo(dr: dr1, proName: "박진이", proNationality: "KR", proImage: UIImage(named: "pro1"), proCareer: ["현 SBS골프 ‘생방송 골프아카데미’ 출연 중", "- [2020-2021] SBS골프 ‘골프에 반하다’ 출연", "- [2019] SBS골프 ‘달콤살벌 골프트립 시즌2’ 출연", "- 골프존 G-투어 출전", "- [2018] LPGA골프웨어 의류스폰서십", "- 브릿지스톤 용품스폰서십", "- SAMSUNG Gear S3 GTOUR-WGTOUR 스킨스 챌린지", "- LG U+골프 인기선수 독점중계 해설위원"])
var pro2 = ProInfo(dr: dr1, proName: "전지선", proNationality: "KR", proImage: UIImage(named: "pro2"), proCareer: ["현 SBS골프 '생방송 골프아카데미' 출연 중", "- [2021] SBS골프 '레슨팩토리 4' 출연", "- [2019] 테일러메이드 F/W 메인모델", "- [2019] U+골프 '셀위골프 in 괌' 출연", "- [2019] 골프포위민 화보촬영", "- [2018] U+골프 '셀위골프' 시즌1 출연", "- [2018] 골프존TV '투쌤골프' 출연", "- [2018] 골프존TV 'New Gear 장비열전' 출연", "- [2018] JTBC골프 '필드레슨포유' 스타일앤팁 출연", "- [2017] 생생 KLPGA LIVE 진행 (이수그룹 제39회 KLGA 챔피언십)"])
var pro3 = ProInfo(dr: dr1, proName: "고덕호", proNationality: "US", proImage: UIImage(named: "pro3"), proCareer: ["- 미 PGA 클래스 A멤버", "- 골프 다이제스트 선정세계 50대 교습가", "- 현 고덕호 PGA 아카데미 원장", "- 현 SBS 골프채널 인스트럭터", "- 현 SBS 골프 해설위원", "- SBS 골프 '골프아카데미' 진행", "- SBS 골프 '고덕호의 9시 티오프' 출연", "- 전 MBC골프 해설위원", "- 골프 다이제스트/문화일보/중앙일보 컬럼 연재"])
var pro4 = ProInfo(dr: dr1, proName: "YB.Jeong", proNationality: "MAL", proImage: UIImage(named: "rocker"), proCareer: ["얘는", "락커인데", "왜 여기있지"])
var pro5 = ProInfo(dr: dr2, proName: "JM.Han", proNationality: "KR")

var cities: [City] = [seoul, busan]
var drs: [String : [DrivingRange]] = ["seoul" : [dr1, dr3], "busan" : [dr2]]
var pros: [ProInfo] = [pro1, pro2, pro3, pro4, pro5]
var recommendedPro: [ProInfo] = [pro1, pro2, pro3]
