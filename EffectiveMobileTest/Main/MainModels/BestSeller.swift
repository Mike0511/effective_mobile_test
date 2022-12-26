//
//  BestSellerItem.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 15.12.22.
//

import SwiftUI

struct BestSellerItem: Codable, Identifiable {
    let id: Int
    var isFavorites: Bool
    let title: String
    let priceWithoutDiscount: Int
    let discountPrice: Int
    var picture: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case isFavorites = "is_favorites"
        case title
        case priceWithoutDiscount = "price_without_discount"
        case discountPrice = "discount_price"
        case picture
    }
}
