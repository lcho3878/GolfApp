//
//  Date.swift
//  GolfApp
//
//  Created by t2023-m079 on 2023/08/31.
//

import Foundation

extension Date{
    func toString(_ format: String) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = format
            dateFormatter.timeZone = TimeZone(identifier: "ko_KR")
            return dateFormatter.string(from: self)
    }
}
