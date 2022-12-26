//
//  DetailsInfoView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 24.12.22.
//

import SwiftUI

struct DetailsInfoView: View {
    @EnvironmentObject var productDetailsViewModel: ProductDetailsViewModel
    @Binding var productDetails: ProductDetails
    
    var body: some View {
        DetailsInfoSectionButtons()
        
        ForEach(productDetailsViewModel.detailsInfoSections, id: \.self) { section in
            if section == productDetailsViewModel.detailsSelectedSection {
                switch section {
                case "Shop": // main task view
                    VStack() {
                        ShopSectionInfoView(productDetails: $productDetails)
                        
                        // Select color and capacity
                        VStack() {
                            HStack {
                                Text("Select color and capacity")
                                    .font(Font.custom(FontNameManager.MarkPro.regular, size: 18))
                                    .foregroundColor(CustomColors.cetaceanBlue)
                                Spacer()
                            }
                            
                            HStack {
                                ColorSelectionView(colors: $productDetails.color)
                                Spacer()
                                CapacitySelectionView(capacities: $productDetails.capacity)
                            }
                        }
                        .offset(y: -10)
                        .padding(.horizontal, 40)
                    }
                    .frame(height: 160)
                case "Details": // test view for details
                    ScrollView() {
                        Text("""
                             Show details
                             Show details
                             Show details
                             Show details
                             Show details
                             Show details
                             """)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                    }
                    .frame(height: 160)
                case "Features": // test view for features
                    ScrollView() {
                        Text("""
                             Show features
                             Show features
                             Show features
                             Show features
                             Show features
                             Show features
                             """)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 30)
                    }
                    .frame(height: 160)
                default:
                    Text("default")
                }
            }
        }
    }
}

struct DetailsInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsInfoView(productDetails:
                .constant(ProductDetails(cpu: "Exynos 990",
                                         camera: "108 + 12 mp",
                                         capacity: ["126", "252"],
                                         color: ["#772D03", "#010035"],
                                         id: "3",
                                         images: [
                                            "https://avatars.mds.yandex.net/get-mpic/5235334/img_id5575010630545284324.png/orig",
                                            "https://www.manualspdf.ru/thumbs/products/l/1260237-samsung-galaxy-note-20-ultra.jpg"
                                         ],
                                         isFavorites: false,
                                         price: 1500,
                                         rating: 4.5,
                                         sd: "256 GB",
                                         ssd: "8 GB",
                                         title: "Galaxy Note 20 Ultra")
                )
        )
            .environmentObject(ProductDetailsViewModel())
    }
}
