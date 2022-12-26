//
//  ColorSelectionView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 24.12.22.
//

import SwiftUI

struct ColorSelectionView: View {
    @EnvironmentObject var productDetailsViewModel: ProductDetailsViewModel
    @Binding var colors: [String]
    
    var body: some View {
        HStack(spacing: 20) {
            ForEach(colors, id: \.self) { color in
                Button(action: {
                    for (key, value) in productDetailsViewModel.productDetailsColors {
                        if key == color {
                            if value == false {
                                productDetailsViewModel.productDetailsColors.updateValue(true, forKey: key)
                            }
                        } else {
                            productDetailsViewModel.productDetailsColors.updateValue(false, forKey: key)
                        }
                    }
                }, label: {
                    ZStack {
                        Circle()
                            .foregroundColor(Color(color))
                            .frame(width: 40)
                        
                        if productDetailsViewModel.productDetailsColors[color] ?? false {
                            Image(systemName: "checkmark")
                                .foregroundColor(.white)
                        }
                    }
                })
            }
        }
    }
}

struct ColorSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSelectionView(colors: .constant(["#772D03", "#010035"]))
            .environmentObject(ProductDetailsViewModel())
    }
}
