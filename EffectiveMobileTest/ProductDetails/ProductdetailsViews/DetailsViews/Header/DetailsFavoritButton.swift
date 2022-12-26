//
//  DetailsFavoritButton.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 24.12.22.
//

import SwiftUI

struct DetailsFavoritButton: View {
    @Binding var productDetails: ProductDetails
    
    var body: some View {
        Button(action: {
            productDetails.isFavorites.toggle()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 35, height: 35)
                    .foregroundColor(CustomColors.cetaceanBlue)
                Image(systemName: productDetails.isFavorites ? "heart.fill" : "heart")
                    .scaleEffect(0.75)
                    .foregroundColor(productDetails.isFavorites ? CustomColors.outrageousOrange : .white)
            }
        })
    }
}

struct DetailsFavoritButton_Previews: PreviewProvider {
    static var previews: some View {
        DetailsFavoritButton(productDetails:
                .constant(
                    ProductDetails(cpu: "Exynos 990",
                                   camera: "108 + 12 mp",
                                   capacity: ["126", "252"],
                                   color: ["#772D03", "#010035"],
                                   id: "3",
                                   images: [
                                        "https://avatars.mds.yandex.net/get-mpic/5235334/img_id5575010630545284324.png/orig",
                                        "https://www.manualspdf.ru/thumbs/products/l/1260237-samsung-galaxy-note-20-ultra.jpg"
                                   ],
                                   isFavorites: false,
                                   price: 1500,
                                   rating: 4.5,
                                   sd: "256 GB",
                                   ssd: "8 GB",
                                   title: "Galaxy Note 20 Ultra")
                )
        )
    }
}