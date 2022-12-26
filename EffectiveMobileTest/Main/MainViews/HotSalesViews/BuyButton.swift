//
//  BuyButton.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 18.12.22.
//

import SwiftUI


struct BuyButton: View {
    @Binding var hotSalesItem: HotSalesItem
    
    var body: some View {
        Button(action: {
            hotSalesItem.isBuy.toggle()
            // go to cart
        }, label: {
            ZStack {
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100,height: 30)
                    .foregroundColor(.white)
                Text("Buy now!")
                    .font(Font.custom(FontNameManager.MarkPro.bold, size: 13))
                    .foregroundColor(CustomColors.cetaceanBlue)
                    .underline(hotSalesItem.isBuy)
            }
        })
    }
}

struct BuyButton_Previews: PreviewProvider {
    static var previews: some View {
        BuyButton(hotSalesItem: .constant(HotSalesItem(
            id: 1,
            isNew: true,
            title: "iPhone12", subtitle: "Súper. Mega. Rápido",
            picture: "https://img.ibxk.com.br/2020/09/23/23104013057475.jpg?w=1120&h=420&mode=crop&scale=both",
            isBuy: true)))
    }
}
