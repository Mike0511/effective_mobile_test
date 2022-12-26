//
//  ProductDetailsViewModel.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 26.12.22.
//

import Foundation

final class ProductDetailsViewModel: ObservableObject {
    
    @Published var productDetails: ProductDetails = download("https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5")
    @Published var productDetailsColors: [String : Bool] = [:]
    @Published var productDetailsCapacities: [String : Bool] = [:]
    @Published var detailsInfoSections: [String] = [
        "Shop",
        "Details",
        "Features"
    ]
    @Published var detailsSelectedSection: String = "Shop"
    
    func createColorsDict(from colors: [String]) {
        for color in colors {
            productDetailsColors.updateValue(false, forKey: color)
        }
    }
    
    func createCapacitiesDict(from capacities: [String]) {
        for capacity in capacities {
            productDetailsCapacities.updateValue(false, forKey: capacity)
        }
    }
    
    func convertPriceToString(number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return "$" + numberFormatter.string(from: NSNumber(value: number))! + ".00"
    }
}
