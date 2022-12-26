//
//  BasketItemCounterView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 25.12.22.
//

import SwiftUI

struct BasketItemCounterView: View {
    @EnvironmentObject var myCartViewModel: MyCartViewModel
    @State private var count = 2
    @Binding var id: Int
    
    private var index: Int {
        myCartViewModel.myCart.basket.firstIndex(where: { $0.id == id })!
    }
    
    private func decreseTotalPrice() {
        myCartViewModel.myCart.total -= myCartViewModel.myCart.basket[index].price
    }
    
    private func increseTotalPrice() {
        myCartViewModel.myCart.total += myCartViewModel.myCart.basket[index].price
    }
    
    var body: some View {
        VStack {
            Button(action: {
                if count > 1 {
                    count -= 1
                    decreseTotalPrice()
                } else {
                    myCartViewModel.myCart.basket.remove(at: index)
                    decreseTotalPrice()
                }
            }, label: {
                Text("−")
                    .font(Font.custom(FontNameManager.MarkPro.bold, size: 20))
                    .offset(y: 5)
            })
            
            Text("\(count)")
                .font(Font.custom(FontNameManager.MarkPro.bold, size: 20))
            
            Button(action: {
                count += 1
                increseTotalPrice()
                
            }, label: {
                Text("+")
                    .font(Font.custom(FontNameManager.MarkPro.bold, size: 20))
                    .offset(y: -5)
            })
        }
        .frame(width: 25, height: 70)
        .foregroundColor(.white)
        .background(CustomColors.yankeesBlue)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .onAppear {
            increseTotalPrice()
            increseTotalPrice()
        }
    }
}

struct BasketItemCounterView_Previews: PreviewProvider {
    static var previews: some View {
        BasketItemCounterView(id: .constant(1))
            .environmentObject(MyCartViewModel())
    }
}
