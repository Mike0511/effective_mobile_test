//
//  MyCartViewModel.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 26.12.22.
//

import Foundation

final class MyCartViewModel: ObservableObject {
    
    @Published var myCart: MyCart = download("https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149")
    
    func convertPriceToString(number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return "$" + numberFormatter.string(from: NSNumber(value: number))! + ".00 us"
    }
}
