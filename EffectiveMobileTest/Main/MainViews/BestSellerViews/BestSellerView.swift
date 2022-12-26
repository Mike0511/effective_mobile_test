//
//  BestSellerView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 18.12.22.
//

import SwiftUI

struct BestSellerView: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    
    private let colomns = [
        GridItem(.adaptive(minimum: 150)),
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Best Seller")
                    .font(Font.custom(FontNameManager.MarkPro.bold, size: 24))
                    .foregroundColor(CustomColors.cetaceanBlue)
                Spacer()
                Button(action: {
                    // go to see more
                }, label: {
                    Text("See more")
                        .font(Font.custom(FontNameManager.MarkPro.regular, size: 16))
                        .foregroundColor(CustomColors.outrageousOrange)
                })
            }
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: colomns, spacing: 10) {
                    ForEach($mainViewModel.mainData.bestSeller) { bestSellerItem in
                        BestSellerItemView(bestSellerItem: bestSellerItem)
                            .frame(width: 170, height: 230)
                            .background(.white)
                            .onTapGesture {
                                // go to details
                            }
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                }
            }
            .offset(y: -10)
        }
        .padding(.horizontal, 20)
    }
}

struct BestSellerView_Previews: PreviewProvider {
    static var previews: some View {
        BestSellerView()
            .environmentObject(MainViewModel())
    }
}
