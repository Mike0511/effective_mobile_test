//
//  ProductDetails.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 15.12.22.
//

import Foundation

struct ProductDetails: Codable {
    let cpu: String
    let camera: String
    var capacity: [String]
    var color: [String]
    let id: String
    var images: [String]
    var isFavorites: Bool
    var price: Int
    var rating: Double
    let sd: String
    let ssd: String
    let title: String

    enum CodingKeys: String, CodingKey {
        case cpu = "CPU"
        case camera
        case capacity
        case color
        case id
        case images
        case isFavorites
        case price
        case rating
        case sd
        case ssd
        case title
    }
}
