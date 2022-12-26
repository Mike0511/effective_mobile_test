//
//  DetailsInfoSectionButtons.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 24.12.22.
//

import SwiftUI

struct DetailsInfoSectionButtons: View {
    @EnvironmentObject var productDetailsViewModel: ProductDetailsViewModel
    
    private var buttonIndex: Int {
        productDetailsViewModel.detailsInfoSections.firstIndex(where: { $0 == productDetailsViewModel.detailsSelectedSection })!
    }
    
    var body: some View {
        HStack(spacing: 30) {
            ForEach(productDetailsViewModel.detailsInfoSections, id: \.self) { name in
                Button(action: {
                    if productDetailsViewModel.detailsSelectedSection != name {
                        productDetailsViewModel.detailsSelectedSection = name
                    }
                }, label: {
                    VStack {
                        Text(name)
                            .font(Font.custom(FontNameManager.MarkPro.bold, size: 18))
                            .foregroundColor(productDetailsViewModel.detailsInfoSections[buttonIndex] == name ? CustomColors.cetaceanBlue : .gray)
                        
                        Rectangle()
                            .frame(width: 90, height: 3)
                            .foregroundColor(productDetailsViewModel.detailsInfoSections[buttonIndex] == name ? CustomColors.outrageousOrange : .white)
                            .offset(y: -10)
                    }
                })
            }
        }
        .padding(.horizontal, 30)
    }
}

struct DetailsButton_Previews: PreviewProvider {
    static var previews: some View {
        DetailsInfoSectionButtons()
            .environmentObject(ProductDetailsViewModel())
    }
}
