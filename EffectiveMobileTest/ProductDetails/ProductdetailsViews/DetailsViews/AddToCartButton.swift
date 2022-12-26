//
//  AddToCartButton.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 24.12.22.
//

import SwiftUI

struct AddToCartButton: View {
    @EnvironmentObject var productDetailsViewModel: ProductDetailsViewModel
    @Binding var productDetails: ProductDetails
    
    var body: some View {
        Button(action: {
            // add to cart
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(height: 55)
                    .foregroundColor(CustomColors.outrageousOrange)
                
                HStack {
                    Text("Add to Cart")
                    Spacer()
                    Text(productDetailsViewModel.convertPriceToString(number: productDetails.price))
                    
                }
                .foregroundColor(.white)
                .font(Font.custom(FontNameManager.MarkPro.bold, size: 18))
                .padding(.horizontal, 40)
            }
        })
        .padding(.horizontal, 30)
    }
}

struct AddToCartButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButton(productDetails:
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
            .environmentObject(ProductDetailsViewModel())
    }
}
