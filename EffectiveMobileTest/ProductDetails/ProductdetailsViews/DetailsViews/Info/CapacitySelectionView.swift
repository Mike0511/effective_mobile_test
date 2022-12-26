//
//  CapacitySelectionView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 24.12.22.
//

import SwiftUI

struct CapacitySelectionView: View {
    @EnvironmentObject var productDetailsViewModel: ProductDetailsViewModel
    @Binding var capacities: [String]
    
    var body: some View {
        HStack(spacing: 35) {
            ForEach(capacities, id: \.self) { capacity in
                Button(action: {
                    for (key, value) in productDetailsViewModel.productDetailsCapacities {
                        if key == capacity {
                            if value == false {
                                productDetailsViewModel.productDetailsCapacities.updateValue(true, forKey: key)
                            }
                        } else {
                            productDetailsViewModel.productDetailsCapacities.updateValue(false, forKey: key)
                        }
                    }
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(productDetailsViewModel.productDetailsCapacities[capacity] ?? false ? CustomColors.outrageousOrange : .white)
                            .frame(width: 70, height: 30)
                        
                        Text(capacity + " GB")
                            .font(Font.custom(FontNameManager.MarkPro.bold, size: 14))
                            .foregroundColor(productDetailsViewModel.productDetailsCapacities[capacity] ?? false ? .white : .gray)
                    }
                })
            }
        }
    }
}

struct CapacitySelectionView_Previews: PreviewProvider {
    static var previews: some View {
        CapacitySelectionView(capacities: .constant(["126", "252"]))
            .environmentObject(ProductDetailsViewModel())
    }
}
