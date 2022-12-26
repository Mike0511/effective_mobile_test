//
//  MainModel.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 15.12.22.
//

import Foundation

struct MainModel: Codable {
    var hotSales: [HotSalesItem]
    var bestSeller: [BestSellerItem]
    
    enum CodingKeys: String, CodingKey {
        case hotSales = "home_store"
        case bestSeller = "best_seller"
    }
}
