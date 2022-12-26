//
//  ImageView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 18.12.22.
//

import SwiftUI

struct ImageView: View {
    @Binding var picture: String
    
    var body: some View {
        GeometryReader { geometry in
            AsyncImage(url: URL(string: picture)) { phase in
                switch phase {
                case .empty:
                    Rectangle()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .foregroundColor(.gray)
                case .success(let image):
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                case .failure:
                    Image(systemName: "photo")
                @unknown default:
                    EmptyView()
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }
}

struct HotSalesImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(picture:
                .constant( "https://img.ibxk.com.br/2020/09/23/23104013057475.jpg?w=1120&h=420&mode=crop&scale=both")
        )
    }
}
