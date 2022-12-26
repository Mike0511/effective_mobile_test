//
//  DetailsHeaderView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 24.12.22.
//

import SwiftUI

struct DetailsHeaderView: View {
    @Binding var productDetails: ProductDetails
    
    var body: some View {
        VStack {
            HStack {
                Text(productDetails.title)
                    .font(Font.custom(FontNameManager.MarkPro.bold, size: 20))
                    .foregroundColor(CustomColors.cetaceanBlue)
                Spacer()
                DetailsFavoritButton(productDetails: $productDetails)
            }
            .padding(.horizontal, 40)
            .padding(.top, 30)
            
            HStack {
                RatingView(rating: $productDetails.rating)
                Spacer()
            }
            .padding(.horizontal, 40)
        }
        .padding(.bottom, 10)
    }
}

struct DetailsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsHeaderView(productDetails:
                .constant(ProductDetails(cpu: "Exynos 990",
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
