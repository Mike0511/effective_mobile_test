//
//  BestSellerFavoriteButton.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 18.12.22.
//

import SwiftUI

struct BestSellerFavoriteButton: View {
    @Binding var bestSellerItem: BestSellerItem
    
    var body: some View {
        Button(action: {
            bestSellerItem.isFavorites.toggle()
        }, label: {
            ZStack {
                Circle()
                    .frame(width: 25)
                    .foregroundColor(.white)
                    .shadow(radius: 25)
                Image(systemName: bestSellerItem.isFavorites ? "heart.fill" : "heart")
                    .scaleEffect(0.75)
                    .foregroundColor(CustomColors.outrageousOrange)
            }
        })
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        BestSellerFavoriteButton(bestSellerItem:
                .constant(BestSellerItem(
                    id: 111,
                    isFavorites: true,
                    title: "Samsung Galaxy s20 Ultra",
                    priceWithoutDiscount: 1047,
                    discountPrice: 1500,
                    picture: "https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg")
                )
        )
    }
}
