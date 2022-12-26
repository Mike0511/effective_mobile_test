//
//  EffectiveMobileTestApp.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 15.12.22.
//

import SwiftUI

@main
struct EffectiveMobileTestApp: App {
    @StateObject private var mainViewModel = MainViewModel()
    @StateObject private var productDetailsViewModel = ProductDetailsViewModel()
    @StateObject private var myCartViewModel = MyCartViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(mainViewModel)
//            ProductDetailsView()
//                .environmentObject(productDetailsViewModel)
//            MyCartView()
//                .environmentObject(myCartViewModel)
        }
    }
}
