//
//  CategoryCircle.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 16.12.22.
//

import SwiftUI

struct CategoryCircle: View {
    @Binding var category: Category
    
    var body: some View {
        VStack {
            CategoryButton(category: $category)
            Text(category.name)
                .font(Font.custom(FontNameManager.MarkPro.regular, size: 16))
                .foregroundColor(category.isSelected ? CustomColors.outrageousOrange : CustomColors.cetaceanBlue)
        }
    }
}

struct CategoryCircle_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCircle(category:
                .constant(Category(name: "Phones",
                                   image: Image("phones"),
                                   isSelected: false)
                )
        )
    }
}
