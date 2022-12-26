//
//  CartDetailsView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 25.12.22.
//

import SwiftUI

struct CartDetailsView: View {
    @EnvironmentObject var myCartViewModel: MyCartViewModel
    @Binding var myCart: MyCart
    
    var body: some View {
        
        VStack() {
            
            VStack(spacing: 30) {
                ForEach($myCart.basket, id: \.id) { basketItem in
                        BasketItemView(basketItem: basketItem)
                }
            }
            .offset(y: -30)
            Spacer()
            
            VStack() {
                Rectangle()
                    .frame(height: 3)
                    .foregroundColor(.white.opacity(0.25))
                
                HStack {
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Total")
                            .font(Font.custom(FontNameManager.MarkPro.regular, size: 16))
                            .foregroundColor(.white)
                        Text("Delivery")
                            .font(Font.custom(FontNameManager.MarkPro.regular, size: 16))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text(myCartViewModel.convertPriceToString(number: myCart.total))
                            .font(Font.custom(FontNameManager.MarkPro.bold, size: 18))
                            .foregroundColor(.white)
                        Text(myCart.delivery)
                            .font(Font.custom(FontNameManager.MarkPro.bold, size: 18))
                            .foregroundColor(.white)
                    }
                }
                .padding(.horizontal, 30)
                
                Rectangle()
                    .frame(height: 3)
                    .foregroundColor(.white.opacity(0.25))
            }
            
            CheckoutButton()
                .padding(.vertical, 10)
        }
        .frame(height: 500)
        .padding(.top, 80)
        
        .background(CustomColors.cetaceanBlue)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

struct CartDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CartDetailsView(myCart:
                .constant(MyCart(basket: [
                                    BasketItem(id: 1,
                                               images: "https://www.manualspdf.ru/thumbs/products/l/1260237-samsung-galaxy-note-20-ultra.jpg",
                                               price: 1500,
                                               title: "Galaxy Note 20 Ultra"),
                                    BasketItem(id: 2,
                                               images: "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-silver-select?wid=470&hei=556&fmt=jpeg&qlt=95&.v=1631652954000",
                                               price: 1800,
                                               title: "iPhone 13"),
                                ],
                                 delivery: "Free",
                                 id: "4",
                                 total: 3300)
                )
        )
        .environmentObject(MyCartViewModel())
            
    }
}
