//
//  BasketItemView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 25.12.22.
//

import SwiftUI

struct BasketItemView: View {
    @EnvironmentObject var myCartViewModel: MyCartViewModel
    @Binding var basketItem: BasketItem
    
    var body: some View {
        HStack {
            ImageView(picture: $basketItem.images)
                .frame(width: 80)
            
            VStack(alignment: .leading) {
                Text(basketItem.title)
                    .font(Font.custom(FontNameManager.MarkPro.bold, size: 18))
                    .foregroundColor(.white)
                Text(myCartViewModel.convertPriceToString(number: basketItem.price))
                    .font(Font.custom(FontNameManager.MarkPro.bold, size: 18))
                    .foregroundColor(CustomColors.outrageousOrange)
            }
            Spacer()
            BasketItemCounterView(id: $basketItem.id)
            
            Button(action: {
                myCartViewModel.myCart.basket.remove(at: myCartViewModel.myCart.basket.firstIndex(where: { $0.id == basketItem.id })!)
                
                // add total decresing
                
            }, label: {
                Image("trash")
                    .scaleEffect(0.7)
            })
        }
        .frame(height: 90)
        .padding(.horizontal, 20)
    }
}

struct BusketItemView_Previews: PreviewProvider {
    static var previews: some View {
        BasketItemView(basketItem:
                .constant(BasketItem(id: 1,
                                     images: "https://www.manualspdf.ru/thumbs/products/l/1260237-samsung-galaxy-note-20-ultra.jpg",
                                     price: 1500,
                                     title: "Galaxy Note 20 Ultra")
                )
        )
        .environmentObject(MyCartViewModel())
    }
}
