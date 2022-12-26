//
//  ProductDetailsView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 23.12.22.
//

import SwiftUI

struct ProductDetailsView: View {
    @EnvironmentObject var productDetailsViewModel: ProductDetailsViewModel
    
    var body: some View {
        NavigationStack{
    
            VStack {
                PicturesView(productDetails: $productDetailsViewModel.productDetails)
                Spacer()
                DetailsView(productDetails: $productDetailsViewModel.productDetails)

            }
            .background(CustomColors.cultured)
            .ignoresSafeArea(edges: .bottom)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        // go to main
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(CustomColors.cetaceanBlue)
                            Image(systemName: "chevron.backward")
                                .foregroundColor(.white)
                        }
                    })
                }
                
                ToolbarItem(placement: .principal) {
                    Text("Product details")
                        .font(Font.custom(FontNameManager.MarkPro.regular, size: 18))
                        .foregroundColor(CustomColors.cetaceanBlue)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(CustomColors.outrageousOrange)
                            Image("cart")
                                .scaleEffect(0.7)
                        }
                    })
                }
                
            }
            .onAppear() {
                productDetailsViewModel.createColorsDict(from: productDetailsViewModel.productDetails.color)
                productDetailsViewModel.createCapacitiesDict(from: productDetailsViewModel.productDetails.capacity)
            }
        }
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
            .environmentObject(ProductDetailsViewModel())
    }
}
