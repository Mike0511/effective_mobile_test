//
//  MainViewModel.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 15.12.22.
//

import SwiftUI

final class MainViewModel: ObservableObject {
    
    @Published var mainData: MainModel = download("https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175")
    @Published var categories: [Category] = [
        Category(name: "Phones", image: Image("phones"), isSelected: false),
        Category(name: "Computer", image: Image("computer"), isSelected: false),
        Category(name: "Health", image: Image("health"), isSelected: false),
        Category(name: "Books", image: Image("books"), isSelected: false),
        Category(name: "Watches", image: Image(systemName: "applewatch"), isSelected: false)
    ]
    
    func resetCategorySelection(for index: Int) {
        for position in 0..<categories.count {
            if position != index {
                categories[position].isSelected = false
            }
        }
    }
    
    func convertPriceToString(number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return "$" + numberFormatter.string(from: NSNumber(value: number))!
    }
    
    
}



