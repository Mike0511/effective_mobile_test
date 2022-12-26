//
//  MyCart.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 15.12.22.
//

import Foundation

struct MyCart: Codable {
    var basket: [BasketItem]
    let delivery: String
    let id: String
    var total: Int
}
