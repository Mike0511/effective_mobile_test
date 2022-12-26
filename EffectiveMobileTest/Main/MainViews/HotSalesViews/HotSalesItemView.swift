//
//  HotSalesItemView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 20.12.22.
//

import SwiftUI

struct HotSalesItemView: View {
    @Binding var hotSalesItem: HotSalesItem
    
    var body: some View {
        ZStack {
            ImageView(picture: $hotSalesItem.picture)
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            VStack {
                HStack {
                    if hotSalesItem.isNew ?? false {
                        NewLabelView()
                        Spacer()
                    } else {
                        Spacer()
                            .frame(height: 40)
                    }
                }
                .offset(y: -20)
                
                HStack {
                    Text(hotSalesItem.title)
                        .font(Font.custom(FontNameManager.MarkPro.bold, size: 20))
                        .foregroundColor(.white)
                        .bold()
                    Spacer()
                }
                
                HStack {
                    Text(hotSalesItem.subtitle)
                        .font(Font.custom(FontNameManager.MarkPro.regular, size: 13))
                        .foregroundColor(.white)
                    Spacer()
                }
                
                HStack {
                    BuyButton(hotSalesItem: $hotSalesItem)
                    Spacer()
                }
            }
            .padding(20)
        }
    }
}

struct HotSalesItemView_Previews: PreviewProvider {
    static var previews: some View {
        HotSalesItemView(hotSalesItem:
                .constant(HotSalesItem(
                    id: 1,
                    isNew: true,
                    title: "iPhone12", subtitle: "Súper. Mega. Rápido",
                    picture: "https://img.ibxk.com.br/2020/09/23/23104013057475.jpg?w=1120&h=420&mode=crop&scale=both",
                    isBuy: true)
                )
        )
    }
}
