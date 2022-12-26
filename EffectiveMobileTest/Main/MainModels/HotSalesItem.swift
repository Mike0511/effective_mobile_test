//
//  HotSalesItem.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 15.12.22.
//

import Foundation

struct HotSalesItem: Codable, Identifiable {
    let id: Int
    let isNew: Bool?
    let title: String
    let subtitle: String
    var picture: String
    var isBuy: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case isNew = "is_new"
        case title
        case subtitle
        case picture
        case isBuy = "is_buy"
    }
}
