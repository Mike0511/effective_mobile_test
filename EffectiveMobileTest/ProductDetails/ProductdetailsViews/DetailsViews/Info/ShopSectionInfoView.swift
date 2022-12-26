//
//  ShopSectionView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 24.12.22.
//

import SwiftUI

struct ShopSectionInfoView: View {
    @Binding var productDetails: ProductDetails
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 30) {
            VStack() {
                Image("cpu")
                    .scaleEffect(0.7)
                Text(productDetails.cpu)
                    .font(Font.custom(FontNameManager.MarkPro.regular, size: 12))
                    .foregroundColor(CustomColors.philippineSilver)
            }
            VStack() {
                Image("camera")
                    .scaleEffect(0.7)
                Text(productDetails.camera)
                    .font(Font.custom(FontNameManager.MarkPro.regular, size: 12))
                    .foregroundColor(CustomColors.philippineSilver)
            }
            VStack() {
                Image("ssd")
                    .scaleEffect(0.7)
                Text(productDetails.ssd)
                    .font(Font.custom(FontNameManager.MarkPro.regular, size: 12))
                    .foregroundColor(CustomColors.philippineSilver)
            }
            VStack() {
                Image("sd")
                    .scaleEffect(0.7)
                Text(productDetails.sd)
                    .font(Font.custom(FontNameManager.MarkPro.regular, size: 12))
                    .foregroundColor(CustomColors.philippineSilver)
            }
        }
        .offset(y: -20)
    }
}

struct ShopSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ShopSectionInfoView(productDetails:
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
