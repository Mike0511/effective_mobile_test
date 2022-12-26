//
//  BestSellerItemView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 22.12.22.
//

import SwiftUI

struct BestSellerItemView: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    @Binding var bestSellerItem: BestSellerItem
    
    var body: some View {
        VStack {
            ZStack {
                ImageView(picture: $bestSellerItem.picture)
                VStack {
                    HStack {
                        Spacer()
                        BestSellerFavoriteButton(bestSellerItem: $bestSellerItem)
                    }
                    Spacer()
                }
                .padding(10)
            }
            
            VStack {
                HStack(alignment: .bottom) {
                    Text(mainViewModel.convertPriceToString(number: bestSellerItem.discountPrice))
                        .font(Font.custom(FontNameManager.MarkPro.bold, size: 20))
                        .foregroundColor(CustomColors.cetaceanBlue)
                    Text(mainViewModel.convertPriceToString(number: bestSellerItem.priceWithoutDiscount))
                        .font(Font.custom(FontNameManager.MarkPro.bold, size: 12))
                        .foregroundColor(.secondary)
                        .strikethrough()
                    Spacer()
                }
                
                HStack(alignment: .bottom) {
                    Text(bestSellerItem.title)
                        .font(Font.custom(FontNameManager.MarkPro.regular, size: 12))
                        .foregroundColor(CustomColors.cetaceanBlue)
                        .lineLimit(1)
                    Spacer()
                }
            }
            .padding(.horizontal, 20)
            .offset(y: -10)
        }
    }
}

struct BestSellerItem_Previews: PreviewProvider {
    static var previews: some View {
        BestSellerItemView(bestSellerItem:
                .constant(BestSellerItem(
                    id: 111,
                    isFavorites: true,
                    title: "Samsung Galaxy s20 Ultra",
                    priceWithoutDiscount: 1047,
                    discountPrice: 1500,
                    picture: "https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg")
                )
        )
        .environmentObject(MainViewModel())
    }
}
