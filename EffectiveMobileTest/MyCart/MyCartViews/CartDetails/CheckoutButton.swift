//
//  CheckoutButton.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 26.12.22.
//

import SwiftUI

struct CheckoutButton: View {
    
    var body: some View {
        Button(action: {
            // checkout
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(height: 55)
                    .foregroundColor(CustomColors.outrageousOrange)
                
                Text("Checkout")
                    .foregroundColor(.white)
                    .font(Font.custom(FontNameManager.MarkPro.bold, size: 18))
                    .padding(.horizontal, 40)
            }
        })
        .padding(30)
    }
}

struct CheckoutButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutButton()
    }
}
