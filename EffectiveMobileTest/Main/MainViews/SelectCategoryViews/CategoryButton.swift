//
//  CategoryButton.swift
//  EffectiveMobileTest
//
//  Created by Mikhail Tantsura on 19.12.22.
//

import SwiftUI

struct CategoryButton: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    @Binding var category: Category
    private var categoryIndex: Int {
        mainViewModel.categories.firstIndex(where: { $0.id == category.id })!
    }
    
    var body: some View {
        Button(action: {
            category.isSelected.toggle()
            mainViewModel.resetCategorySelection(for: categoryIndex)
        }, label: {
            ZStack {
                Circle()
                    .fill(category.isSelected ? CustomColors.outrageousOrange : .white)
                    .frame(width: 70)
                
                category.image
                    .renderingMode(.template)
                    .scaleEffect(category.name == "Watches" ? 1.5 : 1)
                    .foregroundColor(category.isSelected ? .white : Color(uiColor: .lightGray))
            }
        })
    }
}

struct CategoryButton_Previews: PreviewProvider {
    
    static var previews: some View {
        CategoryButton(category:
                .constant(Category(name: "Phones",
                                   image: Image("phones"),
                                   isSelected: true)
                )
        )
        .environmentObject(MainViewModel())
    }
}
