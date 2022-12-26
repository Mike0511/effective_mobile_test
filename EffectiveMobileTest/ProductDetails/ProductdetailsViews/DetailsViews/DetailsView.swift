//
//  DetailsView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 23.12.22.
//

import SwiftUI

struct DetailsView: View {
    @Binding var productDetails: ProductDetails
    
    var body: some View {
        VStack {
            // Header
            DetailsHeaderView(productDetails: $productDetails)
                
            
            // Info
            DetailsInfoView(productDetails: $productDetails)
            
            // Add to cart button
            AddToCartButton(productDetails: $productDetails)
        }
        .offset(y: -10)
        .padding(.bottom, 10)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(productDetails:
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
                                   isFavorites: true,
                                   price: 1500,
                                   rating: 4.5,
                                   sd: "256 GB",
                                   ssd: "8 GB",
                                   title: "Galaxy Note 20 Ultra")
                )
        )
    }
}
