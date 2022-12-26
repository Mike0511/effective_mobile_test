//
//  PicturesView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 23.12.22.
//

import SwiftUI

struct PicturesView: View {
    @Binding var productDetails: ProductDetails
    
    private var views: [AnyView] {
        getViews()
    }
    
    var body: some View {
        CarouselView(itemHeight: 320, views: views)
    }
    
    private func getViews() -> [AnyView] {
        var views: [AnyView] = []
        $productDetails.images.forEach({ picture in
            views.append(AnyView(ImageView(picture: picture)))
        })
        return views
    }
}

struct PicturesView_Previews: PreviewProvider {
    static var previews: some View {
        PicturesView(productDetails:
                .constant(
                    ProductDetails(cpu: "Exynos 990",
                                   camera: "108 + 12 mp",
                                   capacity: ["126", "252"],
                                   color: ["#772D03", "#010035"],
                                   id: "3",
                                   images: [
                                    "https://avatars.mds.yandex.net/get-mpic/5235334/img_id5575010630545284324.png/orig",
                                    "https://www.manualspdf.ru/thumbs/products/l/1260237-samsung-galaxy-note-20-ultra.jpg"
                                   ],
                                   isFavorites: true,
                                   price: 1500,
                                   rating: 4.5,
                                   sd: "256 GB",
                                   ssd: "8 GB",
                                   title: "Galaxy Note 20 Ultra")
                )
        )
    }
}
