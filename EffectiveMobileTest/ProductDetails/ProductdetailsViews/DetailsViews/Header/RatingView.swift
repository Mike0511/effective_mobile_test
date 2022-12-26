//
//  RatingView.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 23.12.22.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating: Double
    
    var body: some View {
        HStack {
            ForEach(0 ..< Int(rating), id: \.self) { _ in
                Image(systemName: "star.fill")
            }
            ForEach(0 ..< ((Int(rating) + Int(5 - rating) < 5) ? 1 : 0), id: \.self) { _ in
                Image(systemName: "star.lefthalf.fill")
            }
            ForEach(0 ..< Int(5 - rating), id: \.self) { _ in
                Image(systemName: "star")
            }
        }
        .foregroundColor(CustomColors.selectiveYellow)
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(3.5))
    }
}
