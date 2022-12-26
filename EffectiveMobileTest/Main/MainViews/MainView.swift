//
//  MainView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 15.12.22.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    
    var body: some View {
        
        VStack(spacing: 0) {
            SelectCategoryView()
            HotSalesView()
            BestSellerView()
            Spacer()
        }
        .onAppear() {
//            getCustomFontNames()
        }
        .background(CustomColors.cultured)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(MainViewModel())
    }
}
